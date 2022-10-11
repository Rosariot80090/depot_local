--Lot 1 : SELECT - FROM - WHERE - AND

--1 - Afficher la liste des hôtels.
--Le résultat doit faire apparaître le nom de l’hôtel et la ville

SELECT hot_nom, hot_ville
FROM hotel 

--2 - Afficher la ville de résidence de Mr White
--Le résultat doit faire apparaître le nom, le prénom, et l'adresse du client

SELECT cli_nom, cli_prenom, cli_adresse, cli_ville
FROM client
WHERE cli_nom = "White";

--3 - Afficher la liste des stations dont l’altitude < 1000
--Le résultat doit faire apparaître le nom de la station et l'altitude

SELECT sta_nom, sta_altitude
FROM station
WHERE sta_altitude < 1000;

--4 - Afficher la liste des chambres ayant une capacité > 1
--Le résultat doit faire apparaître le numéro de la chambre ainsi que la capacité

SELECT DISTINCT cha_numero, cha_capacite
FROM chambre
WHERE cha_capacite > 1;


--5 - Afficher les clients n’habitant pas à Londres
--Le résultat doit faire apparaître le nom du client et la ville

SELECT cli_nom, cli_ville
FROM client
WHERE cli_ville != "Londres";

--6 - Afficher la liste des hôtels située sur la ville de Bretou et possédant une catégorie > 3
--Le résultat "doit faire apparaître le nom de l"hôtel, ville et la catégorie""

SELECT hot_nom, hot_ville, hot_categorie
FROM hot_ville
WHERE hot_ville = "Bretou" AND hot_categorie > 3;