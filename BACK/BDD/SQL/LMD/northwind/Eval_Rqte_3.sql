
/*3- Nombre de produits mis à disposition par les fournisseurs français 
	(tri par nombre de produits décroissant) :

    Requête Northwind*/
    
SELECT s.CompanyName,s.SupplierID,COUNT(s.CompanyName)AS NbreProduits
FROM suppliers s
JOIN products p ON p.SupplierID=s.SupplierID
WHERE s.Country="France"
GROUP BY s.CompanyName
ORDER BY COUNT(s.CompanyName) desc

