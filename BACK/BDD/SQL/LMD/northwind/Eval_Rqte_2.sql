
/*2- Liste des produits vendus par le fournisseur "Exotic Liquids" :

    Requête Northwind*/

SELECT p.ProductName AS Produit,p.UnitPrice AS Prix
FROM suppliers s
RIGHT JOIN products p ON p.SupplierID=s.SupplierID 
WHERE s.CompanyName="Exotic Liquids"


    
