-- drop function best_auteur();
CREATE OR REPLACE function best_auteur() RETURNS integer as $$
/* 
    méthode best_auteur qui renvoie le nombre d'oeuvre vendu par l'auteur qui en a vendu le plus
*/

declare 
rec record;
BEGIN 
select "Auteurs"."Auteur_nom" , "Auteurs"."Auteur_pnom",  count(*) as Nombre_oeuvres_vendues into rec from "Oeuvres" inner join "Ventes" on "Oeuvres"."Oeuvres_id" = "Ventes"."Oeuvres_id" inner join "Auteurs" on "Auteurs"."Auteur_id" = "Oeuvres"."Auteur_id" group by "Oeuvres"."Auteur_id", "Auteurs"."Auteur_nom", "Auteurs"."Auteur_pnom" order by nombre_oeuvres_vendues desc limit 1;
	raise notice '% oeuvres de % % ont été vendues', rec."nombre_oeuvres_vendues", rec."Auteur_nom", rec."Auteur_pnom";
	return rec."nombre_oeuvres_vendues";
END;
$$
language plpgsql;

select best_auteur();

