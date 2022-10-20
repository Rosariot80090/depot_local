/*15. Sortir la liste des fournisseurs susceptibles de livrer les produits dont le stock est inférieur ou égal à 150 % du stock d'alerte.

        La liste sera triée par produit puis fournisseur */


SELECT f.numfou,f.nomfou,p.libart, p.stkphy,p.stkale,ROUND((p.stkale*1.5),0)AS stksecu
FROM produit p
JOIN vente v ON v.codart=p.codart
JOIN fournis f ON f.numfou=v.numfou
WHERE p.stkphy<=ROUND((p.stkale*1.5),0)
ORDER BY p.libart,f.nomfou;