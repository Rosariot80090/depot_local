/*14 - Compter le nombre de chambres par station*/

SELECT sta_nom AS "Station", COUNT(*)AS "nbrChambre"
FROM station s
LEFT JOIN hotel h ON h.hot_sta_id = s.sta_id
LEFT JOIN chambre c ON c.cha_hot_id = h.hot_id
GROUP BY s.sta_id;