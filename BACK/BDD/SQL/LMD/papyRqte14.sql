/*14. Dans les articles susceptibles d’être vendus, 
        lister les articles moins chers (basés sur Prix1) que le moins cher des rubans (article dont le premier caractère commence par R).

        Afficher libellé de l’article et prix1 */

SELECT distinct v.codart,p.libart, v.prix1
FROM vente v
JOIN produit p ON p.codart=v.codart
/*recherche des articles commencant par R*/
/*WHERE v.codart LIKE "R%"*/
WHERE v.prix1<120
/*(SELECT MIN(v.prix1) FROM vente WHERE p.libart LIKE "r%")*/