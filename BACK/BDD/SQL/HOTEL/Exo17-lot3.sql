/* Afficher la durée moyenne des réservations par station */

SELECT sta_nom,AVG(DATEDIFF(res_date_fin,res_date_debut))AS Moyenne
FROM reservation,station
GROUP BY sta_nom;