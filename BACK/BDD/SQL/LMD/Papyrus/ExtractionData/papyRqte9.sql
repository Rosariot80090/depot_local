/*9. Lister les commandes dont le total est supérieur à 10000€ ; 
        on exclura dans le calcul du total les articles commandés en quantité supérieure ou égale à 1000.

        Afficher numéro de commande et total */
        
SELECT c.numcom,c.numfou,c.datcom,l.qtecde,(l.qteliv*l.priuni)AS total
FROM entcom c
JOIN ligcom l ON l.numcom=c.numcom
WHERE l.qtecde<1000;