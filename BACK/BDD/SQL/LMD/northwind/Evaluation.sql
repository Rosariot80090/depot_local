/*
BDD - Evaluation -> Requêtes de BDD



Remettez à votre formateur un dossier comportant les requêtes du cas suivant :



La base Northwind

    Utilisez le script complet northwind_mysql.sql pour créer la base de données Northwind correspondant au schéma de BDD suivant :

MPD Northwind


    Ecrivez ensuite les requêtes permettant d'obtenir les résultats attendus suivants :

1- Liste des clients français :

    Requête Northwind*/

SELECT c.CompanyName,c.ContactName,c.ContactTitle,c.Phone,c.Fax,c.Country
FROM customers c
WHERE c.Country="France"

/*2- Liste des produits vendus par le fournisseur "Exotic Liquids" :

    Requête Northwind*/

SELECT p.ProductName AS Produit,p.UnitPrice AS Prix
FROM suppliers s
RIGHT JOIN products p ON p.SupplierID=s.SupplierID 
WHERE s.CompanyName="Exotic Liquids"

/*3- Nombre de produits mis à disposition par les fournisseurs français (tri par nombre de produits décroissant) :

    Requête Northwind*/

SELECT s.CompanyName,s.SupplierID,COUNT(s.CompanyName)AS NbreProduits
FROM suppliers s
JOIN products p ON p.SupplierID=s.SupplierID
WHERE s.Country="France"
GROUP BY s.CompanyName
ORDER BY COUNT(s.CompanyName) desc


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


SELECT c.CustomerID,c.CompanyName,sum(od.Quantity*od.UnitPrice)AS CA
FROM customers c
RIGHT JOIN orders o ON o.CustomerID=c.CustomerID
LEFT JOIN orderdetails od ON od.OrderID=o.OrderID
LEFT JOIN products p ON p.ProductID=od.ProductID
GROUP BY c.CompanyName
HAVING SUM(od.Quantity*od.UnitPrice)>30000
ORDER BY sum(od.Quantity*od.UnitPrice)desc

/*6- Liste des pays dans lesquels des produits fournis par "Exotic Liquids" ont été livrés :

    Requête Northwind*/

SELECT DISTINCT  s.CompanyName,o.ShipCountry
FROM suppliers s
RIGHT JOIN products p ON p.SupplierID=s.SupplierID
RIGHT JOIN orderdetails od ON od.ProductID=p.ProductID
LEFT JOIN orders o ON o.OrderID=od.OrderID
LEFT JOIN customers c ON c.CustomerID=o.CustomerID 

WHERE s.CompanyName="Exotic Liquids"
ORDER BY o.ShipCountry

/*7- Chiffre d'affaires global sur les ventes de 1997 :
NB: chiffre d'affaires (CA) = total des ventes

    Requête Northwind

    Attention : dans une même vente, un produit peut être vendu plusieurs fois ! Il faut donc d'abord préparer le sous-total de chaque produit, qui tient compte de son prix unitaire et de la quantité vendue...*/

SELECT EXTRACT(YEAR FROM o.OrderDate)AS "Année",sum(od.Quantity*od.UnitPrice)AS MontantVentes97
FROM orderdetails od
JOIN orders o ON o.OrderID=od.OrderID
LEFT JOIN products p ON p.ProductID=od.ProductID
WHERE EXTRACT(YEAR FROM o.OrderDate)=1997


/*8- Chiffre d'affaires détaillé par mois, sur les ventes de 1997 :

    Requête Northwind*/

SELECT EXTRACT(MONTH FROM o.OrderDate)AS"Mois",sum(od.Quantity*od.UnitPrice)AS MontantVentes97
FROM orders o
JOIN orderdetails od ON o.OrderID=od.OrderID

WHERE EXTRACT(YEAR FROM o.OrderDate)=1997
GROUP BY EXTRACT(MONTH FROM o.OrderDate)


/*9- A quand remonte la dernière commande du client nommé "Du monde entier" ?

    Requête Northwind*/
    
SELECT c.CompanyName,max(o.OrderDate)
FROM orders o
JOIN customers c ON c.CustomerID=o.CustomerID
WHERE c.CompanyName="Du monde entier"


/*10- Quel est le délai moyen de livraison en jours ?

    Requête Northwind*/

SELECT AVG(DATEDIFF(o.ShippedDate,o.OrderDate))AS "DélaiMoyende livraison en jours"
FROM orders o



