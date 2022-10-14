--Lot 3 : fonctions d'agrégation

/*13 - Compter le nombre d’hôtel par station*/

SELECT hot_sta_id AS "station",sta_nom,COUNT(*)AS nbrHotel
FROM hotel
JOIN station ON station.sta_id=hotel.hot_sta_id
GROUP BY hotel.hot_sta_id; 

/*14 - Compter le nombre de chambres par station*/

SELECT sta_nom AS "Station", COUNT(*)AS "nbrChambre"
FROM station s
LEFT JOIN hotel h ON h.hot_sta_id = s.sta_id
LEFT JOIN chambre c ON c.cha_hot_id = h.hot_id
GROUP BY s.s--15 - Compter le nombre de chambres par station ayant une capacité > 1ta_id;


/*15 - Compter le nombre de chambres par station ayant une capacité > 1 */


SELECT sta_nom AS "Station", COUNT(*)AS "nbrChambre"
FROM station s
LEFT JOIN hotel h ON h.hot_sta_id = s.sta_id
LEFT JOIN chambre c ON c.cha_hot_id = h.hot_id WHERE c.cha_capacite>1
GROUP BY s.sta_id;


/*16 - Afficher la liste des hôtels pour lesquels Mr Squire a effectué une réservation */
SELECT distinct cli_id, cli_nom, hot_id, hot_nom,res_date
FROM client, hotel, reservation
WHERE cli_nom = "Squire"



/*17 - Afficher la durée moyenne des réservations par station*/
