/*16- Afficher la liste des hotels pour lesquels MR Squire a effectué une réservation */

SELECT distinct cli_nom,hot_nom,res_date
FROM client, hotel, reservation
WHERE cli_nom = "Squire"