-- Lot 2 : JOIN

-- 7 - Afficher la liste des hôtels avec leur station
-- Le résultat doit faire apparaître le nom de la station, le nom de l’hôtel, la catégorie, la ville

SELECT sta_nom, hot_nom, hot_categorie, hot_ville
FROM station
INNER JOIN hotel  ON hot_sta_id = hot_id;



--8 - Afficher la liste des chambres et leur hôtel
--Le résultat doit faire apparaître le nom de l’hôtel, la catégorie, la ville, le numéro de la chambre

SELECT hot_nom, hot_categorie, hot_ville, cha_numero
FROM hotel
INNER JOIN chambre ON cha_hot_id = hot_id;

--9 - Afficher la liste des chambres de plus d'une place dans des hôtels situés sur la ville de Bretou
--Le résultat doit faire apparaître le nom de l’hôtel, la catégorie, la ville, le numéro de la chambre et sa capacité

SELECT hot_nom, hot_categorie, hot_ville="Bretou", cha_numero, cha_capacite
FROM hotel
INNER JOIN chambre ON cha_capacite>1;


--10 - Afficher la liste des réservations avec le nom des clients
--Le résultat doit faire apparaître le nom du client, le nom de l’hôtel, la date de réservation



--11 - Afficher la liste des chambres avec le nom de l’hôtel et le nom de la station
--Le résultat doit faire apparaître le nom de la station, le nom de l’hôtel, le numéro de la chambre et sa capacité



--12 - Afficher les réservations avec le nom du client et le nom de l’hôtel avec datediff
--Le résultat doit faire apparaître le nom du client, le nom de l’hôtel, la date de début du séjour et la durée du séjour

