--Lot 3 : fonctions d'agrégation

--13 - Compter le nombre d’hôtel par station
SELECT COUNT(hot_sta_id), sta_nom, hot_nom
FROM hotel
JOIN station ON station.sta_id = hotel.hot_sta_id;

--14 - Compter le nombre de chambres par station

--15 - Compter le nombre de chambres par station ayant une capacité > 1

--16 - Afficher la liste des hôtels pour lesquels Mr Squire a effectué une réservation

--17 - Afficher la durée moyenne des réservations par station

