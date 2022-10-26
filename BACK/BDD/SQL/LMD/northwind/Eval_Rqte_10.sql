
/*10- Quel est le délai moyen de livraison en jours ?

    Requête Northwind*/
    
SELECT AVG(DATEDIFF(o.ShippedDate,o.OrderDate))AS "DélaiMoyende livraison en jours"
FROM orders o