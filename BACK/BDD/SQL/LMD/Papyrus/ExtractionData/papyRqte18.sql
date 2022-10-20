/*18. En fin d'année, sortir la liste des produits dont la quantité réellement commandée dépasse 90% de la quantité annuelle prévue. */

SELECT p.codart,p.libart,p.qteann,l.qtecde
FROM produit p
JOIN ligcom l ON l.codart=p.codart
WHERE l.qtecde>(p.qteann*0.90)