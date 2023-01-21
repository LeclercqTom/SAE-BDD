BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Auteurs" (
    "Auteur_id" SERIAL primary key, 
	"Auteur_nom"	VARCHAR(50),
	"Auteur_pnom"	VARCHAR(50),
	"auteur_maxime"	VARCHAR(1000),
    "auteur_A_Propos" VARCHAR(2000),
    "Auteur_dateNai" date
);

CREATE TABLE IF NOT EXISTS "Oeuvres" (
    "Oeuvres_id" SERIAL primary key, 
	"Oeuvres_titre"	VARCHAR(50),
	"oeuvre_descrip"	VARCHAR(1000),
	"oeuvre_dim_larg"	numeric,
    "oeuvre_dim_haut" numeric,
    "prix_TTC" numeric default 0.00,
    "en_stock" BOOLEAN,
    "Auteur_id" int,
    FOREIGN KEY("Auteur_id") REFERENCES "Auteurs"("Auteur_id")
);

CREATE TABLE IF NOT EXISTS "Clients" (
    "Cli_id" SERIAL primary key, 
	"Cli_nom"	VARCHAR(50),
	"Cli_pnom"	VARCHAR(50),
	"Cli_adr"	VARCHAR(100),
    "Cli_CP" VARCHAR(10),
    "Cli_Ville" VARCHAR(50),
    "Cli_Mail" VARCHAR(50),
    "Cli_CA" numeric default 0.00,
    "Cli_nb_oeuvres" int default 0
);


CREATE TABLE IF NOT EXISTS "Factures" (
    "Fac_id" SERIAL primary key, 
	"date_fac"	date,
    "Cli_id" int,
	"montant_TTC"	numeric default 0.00,
    "fac_nb_oeuvre"	int default 0,
	
    FOREIGN KEY("Cli_id") REFERENCES "Clients"("Cli_id")
);

CREATE TABLE IF NOT EXISTS "Ventes" (
    "Vente_id" SERIAL, 
	"Oeuvres_id"	int,
	"Fac_id"	int,
    FOREIGN KEY("Oeuvres_id") REFERENCES "Oeuvres"("Oeuvres_id"),
    FOREIGN KEY("Fac_id") REFERENCES "Factures"("Fac_id"),
    CONSTRAINT ventes_pk PRIMARY KEY ("Oeuvres_id", "Fac_id")
);



COMMIT;
