/*13 - Compter le nombre d’hôtel par station*/

SELECT hot_sta_id AS "station",sta_nom,COUNT(*)AS nbrHotel
FROM hotel
JOIN station ON station.sta_id=hotel.hot_sta_id

GROUP BY hotel.hot_sta_id; 