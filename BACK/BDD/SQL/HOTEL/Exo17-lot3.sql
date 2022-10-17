/* Afficher la durée moyenne des réservations par station */
/* Données nécessaires: 
1) table des RESERVATIONS, avec res_date_debut et res_date_fin
2) table des HOTELS

SELECT sta_nom,AVG(DATEDIFF(res_date_fin,res_date_debut))AS Moyenne
FROM reservation,station
GROUP BY sta_nom;