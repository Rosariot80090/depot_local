/*8- Chiffre d'affaires détaillé par mois, sur les ventes de 1997 :

    Requête Northwind*/
    
SELECT EXTRACT(MONTH FROM o.OrderDate)AS"Mois",sum(od.Quantity*od.UnitPrice)AS MontantVentes97
FROM orders o
JOIN orderdetails od ON o.OrderID=od.OrderID
JOIN products p ON p.ProductID=od.ProductID
WHERE EXTRACT(YEAR FROM o.OrderDate)=1997
GROUP BY EXTRACT(MONTH FROM o.OrderDate)
/*HAVING EXTRACT(YEAR FROM o.OrderDate)=1997*/