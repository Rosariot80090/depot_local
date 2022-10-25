/*4- Liste des clients français ayant passé plus de 10 commandes :

    Requête Northwind*/
    
SELECT c.CustomerID,c.CompanyName,COUNT(o.OrderID)AS NbreCommandes
FROM customers c
right JOIN orders o ON o.CustomerID=c.CustomerID
WHERE c.Country="France"
GROUP BY o.CustomerID
HAVING COUNT(o.OrderID)>10

/*5- Liste des clients dont le montant cumulé de toutes les commandes passées est supérieur à 30000 € :
NB: chiffre d'affaires (CA) = total des ventes

    Requête Northwind*/