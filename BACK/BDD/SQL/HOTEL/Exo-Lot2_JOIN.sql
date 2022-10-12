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

SELECT hot_nom, hot_categorie, hot_ville, cha_numero, cha_capacite
FROM hotel
INNER JOIN chambre ON cha_capacite>1 AND hot_ville = "Bretou";


--10 - Afficher la liste des réservations avec le nom des clients
--Le résultat doit faire apparaître le nom du client, le nom de l’hôtel, la date de réservation

SELECT cli_nom, hot_nom, res_date
FROM client
JOIN reservation ON client.cli_id = reservation.res_cli_id
JOIN chambre ON reservation.res_cha_id = chambre.cha_hot_id
JOIN hotel ON hotel.hot_id =  chambre.cha_hot_id;

--11 - Afficher la liste des chambres avec le nom de l’hôtel et le nom de la station
--Le résultat doit faire apparaître le nom de la station, le nom de l’hôtel, le numéro de la chambre et sa capacité

SELECT sta_nom, hot_nom, cha_numero, cha_capacite
FROM station
JOIN hotel ON hotel.hot_sta_id = station.sta_id
JOIN chambre ON chambre.cha_hot_id = hotel.hot_id;

--12 - Afficher les réservations avec le nom du client et le nom de l’hôtel avec datediff
--Le résultat doit faire apparaître le nom du client, le nom de l’hôtel, la date de début du séjour et la durée du séjour

SELECT cli_nom, hot_nom, res_date_debut, (SELECT DATEDIFF(res_date_fin,res_date_debut))AS duree
FROM client
JOIN reservation ON reservation.res_cli_id = client.cli_id
JOIN chambre ON chambre.cha_hot_id = reservation.res_cha_id
JOIN hotel ON hotel.hot_id = chambre.cha_hot_id; 
