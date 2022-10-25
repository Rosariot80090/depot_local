/*7- Chiffre d'affaires global sur les ventes de 1997 :
NB: chiffre d'affaires (CA) = total des ventes

    Requête Northwind

    Attention : dans une même vente, un produit peut être 
	 vendu plusieurs fois ! Il faut donc d'abord préparer 
	 le sous-total de chaque produit, qui tient compte de 
	 son prix unitaire et de la quantité vendue...*/
	 
SELECT EXTRACT(YEAR FROM o.OrderDate)AS "Année",sum(od.Quantity*od.UnitPrice)AS MontantVentes97
FROM orderdetails od
JOIN orders o ON o.OrderID=od.OrderID
LEFT JOIN products p ON p.ProductID=od.ProductID
WHERE EXTRACT(YEAR FROM o.OrderDate)=1997



