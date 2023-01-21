-- DROP TRIGGER archives_client ON "Clients";
-- DROP TABLE archives_client;

CREATE TABLE IF NOT EXISTS archives_client (
        currentuser text,
		cur_date date,
		cur_hour time
      );
CREATE OR REPLACE FUNCTION archives_client() RETURNS TRIGGER AS $$
/* 
Automatiser l’archivage des données clients dans une table « archives_client » lors de la
suppression d’un client de la table clients. Y ajouter la date d’archivage et l’utilisateur qui a
réalisé cette suppression. 
*/

DECLARE
current_user text;
cur_date date;
cur_hour time;

BEGIN

	IF (TG_OP = 'DELETE') THEN
		cur_date = NOW();
		cur_hour =  NOW();
		insert into archives_client values (current_user, cur_date, cur_hour);
		raise notice 'DELETE enregristré dans archives_modifs ';
	END IF;
    return NULL;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER archives_client
AFTER INSERT OR UPDATE OR DELETE ON "Clients" FOR EACH ROW EXECUTE FUNCTION archives_client();

delete from "Clients" where "Cli_id" = 16;