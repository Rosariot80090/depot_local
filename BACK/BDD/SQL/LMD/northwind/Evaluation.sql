/*
BDD - Evaluation -> Requêtes de BDD



Remettez à votre formateur un dossier comportant les requêtes du cas suivant :



La base Northwind

    Utilisez le script complet northwind_mysql.sql pour créer la base de données Northwind correspondant au schéma de BDD suivant :

MPD Northwind


    Ecrivez ensuite les requêtes permettant d'obtenir les résultats attendus suivants :

1- Liste des clients français :

    Requête Northwind
SELECT c.CompanyName,c.ContactName,c.ContactTitle,c.Phone,c.Fax,c.Country
FROM customers c
WHERE c.Country="France";

2- Liste des produits vendus par le fournisseur "Exotic Liquids" :

    Requête Northwind

SELECT p.ProductName AS Produit,p.UnitPrice AS Prix
FROM suppliers s
RIGHT JOIN products p ON p.SupplierID=s.SupplierID 
WHERE s.CompanyName="Exotic Liquids"


3- Nombre de produits mis à disposition par les fournisseurs français (tri par nombre de produits décroissant) :

    Requête Northwind
SELECT s.CompanyName,s.SupplierID,COUNT(s.CompanyName)AS NbreProduits
FROM suppliers s
JOIN products p ON p.SupplierID=s.SupplierID
WHERE s.Country="France"
GROUP BY s.CompanyName
ORDER BY COUNT(s.CompanyName) desc


4- Liste des clients français ayant passé plus de 10 commandes :

    Requête Northwind


5- Liste des clients dont le montant cumulé de toutes les commandes passées est supérieur à 30000 € :
NB: chiffre d'affaires (CA) = total des ventes

    Requête Northwind


6- Liste des pays dans lesquels des produits fournis par "Exotic Liquids" ont été livrés :

    Requête Northwind


7- Chiffre d'affaires global sur les ventes de 1997 :
NB: chiffre d'affaires (CA) = total des ventes

    Requête Northwind

    Attention : dans une même vente, un produit peut être vendu plusieurs fois ! Il faut donc d'abord préparer le sous-total de chaque produit, qui tient compte de son prix unitaire et de la quantité vendue...


8- Chiffre d'affaires détaillé par mois, sur les ventes de 1997 :

    Requête Northwind


9- A quand remonte la dernière commande du client nommé "Du monde entier" ?

    Requête Northwind


10- Quel est le délai moyen de livraison en jours ?

    Requête Northwind



