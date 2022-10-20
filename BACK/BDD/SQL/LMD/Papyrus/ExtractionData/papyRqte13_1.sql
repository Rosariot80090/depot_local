/*13. Coder de 2 manières différentes la requête suivante : 
        Lister les commandes dont le fournisseur est celui de la commande n°70210. 

        Afficher numéro de commande et date */

SELECT c.numcom,f.nomfou
FROM entcom c
JOIN fournis f ON c.numfou=f.numfou
WHERE c.numcom=70210;
