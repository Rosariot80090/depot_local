/*17. Avec le même type de sélection que ci-dessus, sortir un total des stocks par fournisseur, triés par total décroissant. */


SELECT f.nomfou,SUM(p.stkphy)
FROM produit p
JOIN vente v ON v.codart=p.codart
JOIN fournis f ON f.numfou=v.numfou
WHERE p.stkphy<=ROUND((p.stkale*1.5),0)AND v.delliv<=30
GROUP BY f.nomfou
ORDER BY SUM(p.stkphy)DESC;