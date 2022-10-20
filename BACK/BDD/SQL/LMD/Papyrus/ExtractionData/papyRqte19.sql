/*19.Calculer le chiffre d'affaire par fournisseur pour l'année 2018, sachant que les prix indiqués sont hors taxes
 et que le taux de TVA est 20%.*/

/*SELECT EXTRACT(YEAR FROM c.datcom)AS "Année",f.nomfou,c.numcom,c.datcom,p.codart,p.libart,
l.derliv, l.qtecde,l.qteliv,l.priuni,(l.qteliv*l.priuni)AS "sousTotal",(l.qteliv*l.priuni*0.20)AS "TVA 20%",
((l.qteliv*l.priuni)+(l.qteliv*l.priuni*0.20))AS "TotaLivraison"
FROM entcom c
JOIN fournis f ON f.numfou=c.numfou
JOIN ligcom l ON l.numcom=c.numcom
JOIN produit p ON p.codart=l.codart
WHERE  EXTRACT(YEAR FROM c.datcom) =2018*/
SELECT EXTRACT(YEAR FROM c.datcom)AS "Année",f.nomfou,c.numcom,
SUM(((l.qteliv*l.priuni)+(l.qteliv*l.priuni*0.20)))AS "TotaLivraison"
FROM entcom c
JOIN fournis f ON f.numfou=c.numfou
JOIN ligcom l ON l.numcom=c.numcom
JOIN produit p ON p.codart=l.codart
WHERE EXTRACT(YEAR FROM c.datcom) =2018

