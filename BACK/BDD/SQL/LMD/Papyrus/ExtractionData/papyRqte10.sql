/*10. Lister les commandes par nom de fournisseur.

        Afficher nom du fournisseur, numéro de commande et date */
        
SELECT f.nomfou, c.numcom,c.numfou,c.datcom
FROM entcom c
RIGHT JOIN fournis f ON f.numfou=c.numfou
JOIN vente v ON v.numfou=c.numfou
JOIN ligcom l ON l.numcom=c.numcom
GROUP BY c.numcom;