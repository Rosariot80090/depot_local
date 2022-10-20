/*10. Lister les commandes par nom de fournisseur.

        Afficher nom du fournisseur, numéro de commande et date */
        
/*SELECT f.nomfou, c.numcom,c.numfou,c.datcom
FROM entcom c
RIGHT JOIN fournis f ON f.numfou=c.numfou
JOIN vente v ON v.numfou=c.numfou
JOIN ligcom l ON l.numcom=c.numcom
GROUP BY c.numcom;*/

/*11. Sortir les produits des commandes ayant le mot "urgent' en observation.

        Afficher numéro de commande, nom du fournisseur, 
        libellé du produit et sous total (= quantité commandée * prix unitaire) */
        
SELECT DISTINCT c.numcom,f.nomfou,p.codart, p.libart,l.qtecde, l.priuni,(l.qtecde*l.priuni) AS sousTotal, c.obscom
FROM entcom c
JOIN fournis f ON f.numfou=c.numfou
JOIN vente v ON v.numfou=c.numfou
JOIN ligcom l ON l.numcom=c.numcom
JOIN produit p ON f.numfou=c.numfou
WHERE obscom != "Commande urgente"
ORDER BY c.numcom;