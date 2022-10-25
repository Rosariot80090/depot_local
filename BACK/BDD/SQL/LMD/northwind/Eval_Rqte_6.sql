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