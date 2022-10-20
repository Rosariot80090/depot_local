/*3.Afficher le nombre de commandes fournisseurs passées, 
et le nombre de fournisseur concernés. */

SELECT COUNT(c.numcom)AS NbrCde, COUNT(DISTINCT f.numfou)AS NbrFournisseur
FROM entcom c, fournis f
WHERE c.numfou = f.numfou;
