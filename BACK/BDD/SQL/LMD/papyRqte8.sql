/*7. Quelles sont les commandes du jour qui ont des observations particulières ?

        Afficher numéro de commande et date de commande */
        
/*SELECT numcom, datcom,obscom
FROM entcom
WHERE obscom!="";*/

/*8. Lister le total de chaque commande par total décroissant.

        Afficher numéro de commande et total */
        
SELECT c.numcom,c.numfou,c.datcom,(l.qteliv*l.priuni)AS total
FROM entcom c
JOIN vente v ON v.numfou=c.numfou
JOIN ligcom l ON l.numcom=c.numcom
GROUP BY c.numcom
ORDER BY total desc;


