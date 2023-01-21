-- Auteurs

INSERT INTO "Auteurs"("Auteur_nom","Auteur_pnom","auteur_maxime","auteur_A_Propos", "Auteur_dateNai") values ('lafrite', 'seb', 'Vivre en harmonie avec les merveilles qui nous entourent. Apprécier, écouter, contempler. Il ne suffit pas dêtre en vie, il faut être vivant !', 'Artiste plasticien originaire de Meaux, SEB se passionne pour lart dès son plus jeune âge. A 12 ans, il avait déjà installé son premier atelier dans lancien grenier à grains de la ferme familiale. Ainsi, tout naturellement, lorsqu il dû choisir son orientation, le jeune homme ne se vit pas dans une activité sans lien avec le dessin. Il intègre ainsi une école d arts graphiques et parcourt les musées parisiens, se nourrissant des mouvements artistiques en vogue dans les années 80. Dès la fin de ses études, Séb devient graphiste professionnel. Immergé dans le milieu de la communication, l artiste peut ainsi laisser une grande place à son imagination. Passionné par la peinture et la sculpture, il continue à peindre et à réaliser de nombreuses œuvres quil expose.', '1986-06-18');

INSERT INTO "Auteurs"("Auteur_nom","Auteur_pnom","auteur_maxime","auteur_A_Propos", "Auteur_dateNai") values ('novarino', 'Fabien', 'J ai pu élargir mon champ d exploration en portant mon regard en direction de lieux résolument différents', 'Originaire de Savoie, Fabien passe son enfance au cœur des montagnes où il s adonne aux plaisirs du dessin, de la peinture et du modélisme. Il déménagera ensuite avec sa famille dans le sud de la France. Son amour pour les grands espaces va alors être bouleversé par ce changement radical, tant climatique que paysager. Cette nouvelle implantation va fortement l influencer et définitivement asseoir sa détermination à devenir peintre. Il suivra des études littéraires et fréquentera assidûment les musées et expositions avant d embrasser une carrière commerciale. à 27 ans il stoppe son activité professionnelle pour se consacrer exclusivement à la poursuite de sa passion de jeunesse. D abord proche de l école Provençale, il réalise de nombreuses toiles aux sujets figuratifs divers, allant des paysages de sa région aux représentations de scènes de la vie quotidienne. Il élargira ensuite son champ d exploration en portant son regard en direction de lieux résolument différents tels que New York, Paris ou encore le Maroc.', '2012-02-18');

INSERT INTO "Auteurs"("Auteur_nom","Auteur_pnom","auteur_maxime","auteur_A_Propos", "Auteur_dateNai") values ('pr', 'zemo', 'L art est comme un navire entouré de vagues de désinformation, l art s efforce de résister à cette force destructrice de désinformation de masse, l art aide à sauver notre vraie nature d êtres humains. Je ressens un grand besoin de création et d explication de ce monde dans lequel nous vivons à travers la peinture;\n', 'Przemo est un artiste peintre polonais. D aussi loin qu il puisse s en souvenir, le dessin a toujours fait partie de sa vie. Il se passionne pour la peinture, la sculpture, le montage de films, le streetwear, les bandes dessinées, les dessins animés et l informatique. Ainsi, il s oriente vers l Académie des beaux-arts de conservation et de restauration d œuvres d art, où il étudie tout particulièrement la sculpture et les détails architecturaux. Après l obtention de son diplôme, il suit une formation en informatique et en fait son activité professionnelle. Przemo partage ainsi son temps entre sa passion pour l informatique et celle pour l art. C est dans le but d étancher sa soif de création qu il se lance, en 2018 et après avoir longtemps pratiqué la sculpture, dans la peinture. \n', '1928-04-19');

INSERT INTO "Auteurs"("Auteur_nom","Auteur_pnom","auteur_maxime","auteur_A_Propos", "Auteur_dateNai") values ('abbatucci', 'Violaine', 'J’ai toujours de quoi dessiner sur moi, car j’aime capter tous les instants de la vie par le dessin. J’ai noirci des dizaines carnets, véritables témoins de mes moments de vie.', 'D’un père musicien, d’une mère potier-céramiste et d’un grand-père aquarelliste, Violaine a baigné, dès son enfance, dans un environnement où les arts étaient très présents. Après avoir exercé les métiers de commerciale dans l’industrie pharmaceutique et de régisseuse pour des sociétés de production audiovisuelle, elle a décidé, en 2011, de s’adonner pleinement à sa passion pour le dessin. Autodidacte, sa technique se façonne au gré des dessins crayonnés dans les marges des cahiers d’école, aujourd’hui remplacés par de nombreux carnets de croquis qu’elle emmène, où qu’elle soit, et qui sont pour elle des "témoins artistiques de ses escapades, de véritables repères personnels de vie"', '1966-01-11');

INSERT INTO "Auteurs"("Auteur_nom","Auteur_pnom","auteur_maxime","auteur_A_Propos", "Auteur_dateNai") values ('al', 'freno', 'Il y a toujours un coin de ciel bleu pour qui le veut et derrière chaque nuage se cache le ciel', 'Al Freno est un artiste peintre belge, originaire de Cambrai. Enfant, il se passionnait déjà pour le dessin, qu il pratiquait depuis son plus jeune âge. Il se souvient avoir été fasciné, à l adolescence, par le travail de grands maîtres de l art tels que Dali et Picasso. Il intègre ainsi naturellement l école des beaux-arts de Dunkerque, où il apprend à maîtriser les techniques d ombre et de lumière ainsi que les perspectives. Al Freno laisse ensuite l art de côté pendant une vingtaine d années, durant lesquelles il voyage beaucoup. Il visite de nombreux pays et se passionne alors pour le bleu, la mer, les villas paradisiaques et les piscines, que l on retrouve aujourd hui dans ses œuvres.\n', '1981-07-29');

-- Oeuvres
INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") 
values ('WAAD', 'Cette oeuvre d art contemporain unique et originale "Waad" a été réalisée par l artiste contemporain Seb.', 13,13,105, 'true',1);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") 
values ('GO AYRTON','Cette oeuvre d art contemporain unique et originale "50x50 No Name 10013-1343-20220916-3" a été réalisée par l artiste contemporain Novarino Fabien.', 50,50,890, 'true',2);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('MORE SPEED','Cette oeuvre d art contemporain unique et originale "50x50 No Name 10013-1343-20220916-1" a été réalisée par l artiste contemporain Novarino Fabien.', 50,50,890, 'true',2);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('HOLIDAY HOTEL','Cette oeuvre d art contemporain unique et originale "HOLIDAY HOTEL" a été réalisée par l artiste contemporain Al Freno.', 40,120,1250, 'true',3);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('ON THE BEACH','Cette oeuvre d art contemporain unique et originale "HOLIDAY HOTEL" a été réalisée par l artiste contemporain Al Freno.', 19,19,155, 'true',3);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('VILLA BERANGERE','Cette oeuvre d art contemporain unique et originale "HOLIDAY HOTEL" a été réalisée par l artiste contemporain Al Freno.', 36,36,460, 'true',3);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('BLUE VILLA','Cette oeuvre d art contemporain unique et originale "HOLIDAY HOTEL" a été réalisée par l artiste contemporain Al Freno.', 100,100,2500, 'true',3);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('PARIS PRINTANIER','Cette oeuvre d art contemporain unique et originale "Paris printanier" a été réalisée par l artiste contemporain Abbatucci Violaine.', 19,19,155, 'true',4);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('LA RESIDENCE DES DUCS','Cette oeuvre d art contemporain unique et originale "Paris printanier" a été réalisée par l artiste contemporain Abbatucci Violaine.', 25,25,265, 'true',4);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('LUCKY BALLOON','Cette oeuvre dart contemporain unique et originale "Lucky balloon" a été réalisée par l artiste contemporain Przemo.', 13,13,105, 'true',5);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('UNSATIFIED HUNGER','Cette oeuvre dart contemporain unique et originale "Lucky balloon" a été réalisée par l artiste contemporain Przemo.', 13,13,105, 'true',5);
 --
INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") 
values ('WAAD2', 'Cette oeuvre d art contemporain unique et originale "Waad" a été réalisée par l artiste contemporain Seb.', 13,13,105, 'true',1);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") 
values ('GO AYRTON2','Cette oeuvre d art contemporain unique et originale "50x50 No Name 10013-1343-20220916-3" a été réalisée par l artiste contemporain Novarino Fabien.', 50,50,890, 'true',2);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('MORE SPEED2','Cette oeuvre d art contemporain unique et originale "50x50 No Name 10013-1343-20220916-1" a été réalisée par l artiste contemporain Novarino Fabien.', 50,50,890, 'true',2);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('HOLIDAY HOTEL2','Cette oeuvre d art contemporain unique et originale "HOLIDAY HOTEL" a été réalisée par l artiste contemporain Al Freno.', 40,120,1250, 'true',3);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('ON THE BEACH2','Cette oeuvre d art contemporain unique et originale "HOLIDAY HOTEL" a été réalisée par l artiste contemporain Al Freno.', 19,19,155, 'true',3);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('VILLA BERANGERE2','Cette oeuvre d art contemporain unique et originale "HOLIDAY HOTEL" a été réalisée par l artiste contemporain Al Freno.', 36,36,460, 'true',3);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('BLUE VILLA2','Cette oeuvre d art contemporain unique et originale "HOLIDAY HOTEL" a été réalisée par l artiste contemporain Al Freno.', 100,100,2500, 'true',3);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('PARIS PRINTANIER2','Cette oeuvre d art contemporain unique et originale "Paris printanier" a été réalisée par l artiste contemporain Abbatucci Violaine.', 19,19,155, 'true',4);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('LA RESIDENCE DES DUCS2','Cette oeuvre d art contemporain unique et originale "Paris printanier" a été réalisée par l artiste contemporain Abbatucci Violaine.', 25,25,265, 'true',4);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('LUCKY BALLOON2','Cette oeuvre dart contemporain unique et originale "Lucky balloon" a été réalisée par l artiste contemporain Przemo.', 13,13,105, 'true',5);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('UNSATIFIED HUNGER2','Cette oeuvre dart contemporain unique et originale "Lucky balloon" a été réalisée par l artiste contemporain Przemo.', 13,13,105, 'true',5);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('PARIS PRINTANIER3','Cette oeuvre d art contemporain unique et originale "Paris printanier" a été réalisée par l artiste contemporain Abbatucci Violaine.', 19,19,155, 'true',4);

INSERT INTO "Oeuvres"("Oeuvres_titre","oeuvre_descrip","oeuvre_dim_larg","oeuvre_dim_haut", "prix_TTC","en_stock","Auteur_id") values ('LA RESIDENCE DES DUCS3','Cette oeuvre d art contemporain unique et originale "Paris printanier" a été réalisée par l artiste contemporain Abbatucci Violaine.', 25,25,265, 'true',4);

-- Clients
INSERT INTO "Clients"("Cli_nom","Cli_pnom","Cli_adr", "Cli_CP","Cli_Ville","Cli_Mail","Cli_CA","Cli_nb_oeuvres") values ('Leclercq','Tom','78 rue de la rigolade', '62200', 'Boulogne sur mer', 't.leclercq@etu.univ-littoral.fr',0,0);

INSERT INTO "Clients"("Cli_nom","Cli_pnom","Cli_adr", "Cli_CP","Cli_Ville","Cli_Mail","Cli_CA","Cli_nb_oeuvres") values ('Leclercq2','Tom2','78 rue de la rigoladeux', '62200', 'Boulogne sur mer', 't.leclercq2@etu.univ-littoral.fr',0,0);

INSERT INTO "Clients"("Cli_nom","Cli_pnom","Cli_adr", "Cli_CP","Cli_Ville","Cli_Mail","Cli_CA","Cli_nb_oeuvres") values ('Brunel','Bastien','7 rue de la larue', '62850', 'St Inglevert', 'brunel.bastien@gmail.com',0,0);

INSERT INTO "Clients"("Cli_nom","Cli_pnom","Cli_adr", "Cli_CP","Cli_Ville","Cli_Mail","Cli_CA","Cli_nb_oeuvres") values ('Brunel2','Bastien2','70 rue victor hugo', '62580', 'St Inglevert', 'brunel.bastien2@gmail.com',0,0);

INSERT INTO "Clients"("Cli_nom","Cli_pnom","Cli_adr", "Cli_CP","Cli_Ville","Cli_Mail","Cli_CA","Cli_nb_oeuvres") values ('Oges','Florian','10 rue du rond point', '62100', 'Isques', 'oges.florian@gmail.com',0,0);

INSERT INTO "Clients"("Cli_nom","Cli_pnom","Cli_adr", "Cli_CP","Cli_Ville","Cli_Mail","Cli_CA","Cli_nb_oeuvres") values ('Oges2','Florian2','10 rue du dos dane', '62100', 'Isques', 'oges.florian2@gmail.com',0,0);

INSERT INTO "Clients"("Cli_nom","Cli_pnom","Cli_adr", "Cli_CP","Cli_Ville","Cli_Mail","Cli_CA","Cli_nb_oeuvres") values ('test','test','10 rue du test', '62852', 'test', 'test.test@gmail.com',0,0);

INSERT INTO "Clients"("Cli_nom","Cli_pnom","Cli_adr", "Cli_CP","Cli_Ville","Cli_Mail","Cli_CA","Cli_nb_oeuvres") values ('test2','test2','10 rue du test2', '62852', 'test', 'test.test2@gmail.com',0,0);

-- Factures

INSERT INTO "Factures"("date_fac","Cli_id") values ('2022-12-12',1);

INSERT INTO "Factures"("date_fac","Cli_id") values ('2022-12-12',3);

INSERT INTO "Factures"("date_fac","Cli_id") values ('2022-12-12',5);

-- Ventes

INSERT INTO "Ventes"("Oeuvres_id","Fac_id") values (5,1);

INSERT INTO "Ventes"("Oeuvres_id","Fac_id") values (4,1);

INSERT INTO "Ventes"("Oeuvres_id","Fac_id") values (6,1);

INSERT INTO "Ventes"("Oeuvres_id","Fac_id") values (7,1);

INSERT INTO "Ventes"("Oeuvres_id","Fac_id") values (15,1);

INSERT INTO "Ventes"("Oeuvres_id","Fac_id") values (8,2);

INSERT INTO "Ventes"("Oeuvres_id","Fac_id") values (9,2);

INSERT INTO "Ventes"("Oeuvres_id","Fac_id") values (19,2);

INSERT INTO "Ventes"("Oeuvres_id","Fac_id") values (20,3);

INSERT INTO "Ventes"("Oeuvres_id","Fac_id") values (1,3);



