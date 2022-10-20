/*16. Sortir la liste des fournisseurs susceptibles de livrer les produits dont le stock est inférieur ou égal à 150 % du stock d'alerte, 
        et un délai de livraison d'au maximum 30 jours.
 
       La liste sera triée par fournisseur puis produit */
       
SELECT f.numfou,f.nomfou,p.libart, p.stkphy,p.stkale,ROUND((p.stkale*1.5),0)AS stksecu,v.delliv<=30
FROM produit p
JOIN vente v ON v.codart=p.codart
JOIN fournis f ON f.numfou=v.numfou
WHERE p.stkphy<=ROUND((p.stkale*1.5),0)AND v.delliv<=30
ORDER BY f.nomfou,p.libart;