DROP TRIGGER majInsert ON "Ventes";
CREATE OR REPLACE FUNCTION majInsert() RETURNS TRIGGER AS $$
-- quand il y a une nouvelle facture de généré, le script met a jour le cli_nb et le cli_CA
DECLARE
nbOeuvres integer;
cli_CA integer = 0;
cli_id integer;
oeuvre_id integer;

en_stock BOOLEAN;



rec_oeuvres record;
	c_info_oeuvre cursor(facId int)
		for select "Oeuvres"."Oeuvres_id", "Oeuvres"."prix_TTC","Oeuvres"."en_stock", "Ventes"."Fac_id"
		from "Oeuvres" INNER JOIN "Ventes" ON "Oeuvres"."Oeuvres_id" = "Ventes"."Oeuvres_id"
		where "Fac_id" = facId;

BEGIN
	IF  (TG_OP = 'INSERT') THEN
		select "Oeuvres"."en_stock" into en_stock from "Oeuvres" where "Oeuvres_id" = NEW."Oeuvres_id";
		
		if (en_stock is TRUE) THEN
			update "Factures" set "montant_TTC" = 0.00 where "Fac_id" = NEW."Fac_id";
			select count(*) into nbOeuvres from "Ventes" where "Fac_id" = NEW."Fac_id";
			-- 		raise notice '%',nbOeuvres;
			update "Factures" set fac_nb_oeuvre = nbOeuvres where "Fac_id" = NEW."Fac_id";
			-- open the cursor
			open c_info_oeuvre(NEW."Fac_id");
			loop
		
			fetch c_info_oeuvre into rec_oeuvres;
			
			exit when not found;
		
			if rec_oeuvres."Fac_id" = NEW."Fac_id" THEN
				update "Factures" set "montant_TTC" = "montant_TTC" + rec_oeuvres."prix_TTC" where "Fac_id" = NEW."Fac_id";	

			end if;
			end loop;
			-- close the cursor
			close c_info_oeuvre;
			select "montant_TTC" into cli_CA from "Factures" where "Fac_id" = NEW."Fac_id";
			-- raise notice '%',cli_CA;
			select "Cli_id" into cli_id from "Factures" where "Fac_id" = NEW."Fac_id";
			-- raise notice '%',cli_CA;
			update "Clients" set "Cli_CA" = cli_CA,"Cli_nb_oeuvres" = nbOeuvres  where "Cli_id" = cli_id;
			select "Oeuvres"."Oeuvres_id" into oeuvre_id from "Oeuvres" where "Oeuvres_id" = NEW."Oeuvres_id";
			update "Oeuvres" set "en_stock" = False where "Oeuvres_id" = oeuvre_id;
		ELSE
			raise 'l''oeuvre est déjà vendue !!! dommage'; 
		end IF;

    end if;
	return NULL;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER majInsert
AFTER INSERT OR UPDATE OR DELETE ON "Ventes" FOR EACH ROW EXECUTE FUNCTION majInsert();