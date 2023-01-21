-- DROP FUNCTION c_detailFacture(int);
create or replace function c_detailFacture(facId int)
returns void as $$

declare
	rec_infoFacture record;
	rec_info_oeuvre record;
	c_detail_facture cursor(facId int)
		for select f."Fac_id", c."Cli_nom", c."Cli_pnom", f."montant_TTC", f."fac_nb_oeuvre" 
		from "Factures" f inner join "Clients" c on c."Cli_id" = f."Cli_id"
        where f."Fac_id" = FacId;
	
	c_info_oeuvre cursor(facId int)
		for select f."Fac_id", o."Oeuvres_titre", o."prix_TTC", a."Auteur_nom", a."Auteur_pnom" 
		from "Factures" f inner join "Ventes" v on v."Fac_id" = f."Fac_id"
		inner join "Oeuvres" o on v."Oeuvres_id" = o."Oeuvres_id"
		inner join "Auteurs" a on a."Auteur_id" = o."Auteur_id"
        where f."Fac_id" = FacId;
	
begin
-- open the cursor
			open c_detail_facture(FacId);
			loop
			-- fetch row into the infractions
			fetch c_detail_facture into rec_infoFacture;
			-- exit when no more row to fetch
			exit when not found;
			if rec_infoFacture."Fac_id" = FacId then
 				raise notice 'Le client % % a fait l''acquisition de % oeuvres pour un total de %€', rec_infoFacture."Cli_nom",rec_infoFacture."Cli_pnom",rec_infoFacture."fac_nb_oeuvre",rec_infoFacture."montant_TTC";
 				raise notice 'Détail des oeuvres possédées : ';
				open c_info_oeuvre(FacId);
					loop
					-- fetch row into the infractions
					fetch c_info_oeuvre into rec_info_oeuvre;
					-- exit when no more row to fetch
					exit when not found;
					raise notice 'Titre de l''oeuvre : %  Auteur : % %  Prix de l''oeuvre : %€', rec_info_oeuvre."Oeuvres_titre",rec_info_oeuvre."Auteur_nom",rec_info_oeuvre."Auteur_pnom",rec_info_oeuvre."prix_TTC";
			end loop;
			end if;
			end loop;
			-- close the cursor
			close c_detail_facture;
end; $$

language plpgsql;

select c_detailfacture(1);