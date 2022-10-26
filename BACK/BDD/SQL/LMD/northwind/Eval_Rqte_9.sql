/*9- A quand remonte la dernière commande du client nommé "Du monde entier" ?

    Requête Northwind*/
    
SELECT c.CompanyName,max(o.OrderDate)
FROM orders o
JOIN customers c ON c.CustomerID=o.CustomerID
WHERE c.CompanyName="Du monde entier"
