/*16 - Afficher la liste des hôtels pour lesquels Mr Squire a effectué une réservation */

SELECT distinct cli_nom,hot_nom,res_date
FROM client, hotel, reservation
WHERE cli_nom = "Squire"

