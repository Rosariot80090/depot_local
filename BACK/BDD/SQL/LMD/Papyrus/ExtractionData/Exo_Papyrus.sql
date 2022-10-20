/*1. Quelles sont les commandes du fournisseur n°9120 ?*/

SELECT f.numfou, c.numcom
FROM fournis f, entcom c
WHERE f.numfou = "9120"
ORDER BY c.numcom;

/*2. Afficher le code des fournisseurs pour lesquels des commandes ont été passées. */

SELECT DISTINCT c.numfou
FROM entcom c

/*3.Afficher le nombre de commandes fournisseurs passées, et le nombre de fournisseur concernés. */

SELECT COUNT(c.numcom)AS NbrCde, COUNT(DISTINCT f.numfou)AS NbrFournisseur
FROM entcom c, fournis f
WHERE c.numfou = f.numfou;

/*4. Extraire les produits ayant un stock inférieur ou égal au stock d'alerte, et dont la quantité annuelle est inférieure à 1000. 

        Informations à fournir : n° produit, libellé produit, stock actuel, stock d'alerte, quantité annuelle) */

SELECT codart, libart, stkphy,stkale, qteann
FROM produit p
WHERE stkphy<= stkale AND qteann<1000;

/*5. Quels sont les fournisseurs situés dans les départements 75, 78, 92, 77 ?

        L’affichage (département, nom fournisseur) sera effectué par département décroissant, puis par ordre alphabétique. */

SELECT f.numfou,f.nomfou,f.posfou
FROM fournis f
WHERE f.posfou LIKE "7%" OR f.posfou LIKE "92%";

/*6. Quelles sont les commandes passées en mars et en avril ? */

SELECT EXTRACT(MONTH FROM datcom)AS MoisCde, numcom , numfou
FROM entcom
WHERE EXTRACT(MONTH FROM datcom)="3"OR EXTRACT(MONTH FROM datcom)="4" ;

/*7. Quelles sont les commandes du jour qui ont des observations particulières ?

        Afficher numéro de commande et date de commande */

SELECT numcom, datcom, obscom
FROM entcom
WHERE obscom!=" " ;

/*8. Lister le total de chaque commande par total décroissant.

        Afficher numéro de commande et total */

SELECT c.numcom,c.numfou,c.datcom,(l.qteliv*l.priuni)AS total
FROM entcom c
JOIN vente v ON v.numfou=c.numfou
JOIN ligcom l ON l.numcom=c.numcom
GROUP BY c.numcom
ORDER BY total DESC ;

/*9. Lister les commandes dont le total est supérieur à 10000€ ; 
        on exclura dans le calcul du total les articles commandés en quantité supérieure ou égale à 1000.

        Afficher numéro de commande et total */

SELECT c.numcom,c.numfou,c.datcom,l.qtecde,(l.qteliv*l.priuni)AS total
FROM entcom c
JOIN ligcom l ON l.numcom=c.numcom
WHERE l.qtecde<1000;

/*10. Lister les commandes par nom de fournisseur.

        Afficher nom du fournisseur, numéro de commande et date */

SELECT f.nomfou, c.numcom,c.numfou,c.datcom
FROM entcom c
RIGHT JOIN fournis f ON f.numfou=c.numfou
JOIN vente v ON v.numfou=c.numfou
JOIN ligcom l ON l.numcom=c.numcom
GROUP BY c.numcom;

/*11. Sortir les produits des commandes ayant le mot "urgent' en observation.

        Afficher numéro de commande, nom du fournisseur, 
        libellé du produit et sous total (= quantité commandée * prix unitaire) */

SELECT DISTINCT c.numcom,f.nomfou,p.codart, p.libart,l.qtecde, l.priuni,(l.qtecde*l.priuni) AS sousTotal, c.obscom
FROM entcom c
JOIN fournis f ON f.numfou=c.numfou
JOIN vente v ON v.numfou=c.numfou
JOIN ligcom l ON l.numcom=c.numcom
JOIN produit p ON f.numfou=c.numfou
WHERE obscom != "Commande urgente"
ORDER BY c.numcom;

/*12. Coder de 2 manières différentes la requête suivante : 
        Lister le nom des fournisseurs susceptibles de livrer au moins un article. */


SELECT DISTINCT f.numfou, f.nomfou, c.numcom, p.codart, p.libart, p.stkphy, l.qtecde, l.qteliv
FROM entcom c
RIGHT OUTER JOIN fournis f ON f.numfou=c.numfou /*Priorité à doite de JOIN.												Me retourne tous les fournisseur même ceux qui n'ont pas passés commande*/
LEFT OUTER JOIN ligcom l ON c.numcom=l.numcom /*Priorité à gauche de JOIN. Me retourne tous les numéros de commandes*/
RIGHT OUTER JOIN produit p ON l.codart=p.codart/* Me retourne tous les produits même ceux qui n'ont pas été commandés*/
WHERE l.qteliv!=0
ORDER BY l.numcom


SELECT f.numfou, f.nomfou, c.numcom, p.codart, p.libart,p.stkphy, l.qtecde, l.qteliv
FROM fournis f
RIGHT OUTER JOIN entcom c ON c.numfou=f.numfou 
/*Priorité à la table des commandes.Me retourne ceux qui ont passé commande*/

/*LEFT OUTER  JOIN entcom c 
/*Priorité à la table des fournisseurs.Me retourne tous les fournissuers même ceux qui n'ont pas passé commande*/

LEFT OUTER JOIN ligcom l ON l.numcom=c.numcom
/*la table ligcom me permet de faire la liason en tre numéro de commande et produit*/

RIGHT OUTER JOIN produit p ON l.codart=p.codart
  
WHERE l.qteliv!=0
ORDER  BY l.numcom 

/*13. Coder de 2 manières différentes la requête suivante : 
        Lister les commandes dont le fournisseur est celui de la commande n°70210. 

        Afficher numéro de commande et date */

SELECT c.numcom,f.nomfou
FROM entcom c
JOIN fournis f ON c.numfou=f.numfou
WHERE c.numcom=70210;

SELECT f.nomfou,c.numcom
FROM fournis f
JOIN entcom c ON c.numfou=f.numfou
WHERE c.numcom=70210;

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

/*15. Sortir la liste des fournisseurs susceptibles de livrer les produits dont le stock est inférieur ou égal à 150 % du stock d'alerte.

        La liste sera triée par produit puis fournisseur */
SELECT f.numfou,f.nomfou,p.libart, p.stkphy,p.stkale,ROUND((p.stkale*1.5),0)AS stksecu
FROM produit p
JOIN vente v ON v.codart=p.codart
JOIN fournis f ON f.numfou=v.numfou
WHERE p.stkphy<=ROUND((p.stkale*1.5),0)
ORDER BY p.libart,f.nomfou;

/*16. Sortir la liste des fournisseurs susceptibles de livrer les produits dont le stock est inférieur ou égal à 150 % du stock d'alerte, 
        et un délai de livraison d'au maximum 30 jours.

        La liste sera triée par fournisseur puis produit */
SELECT f.numfou,f.nomfou,p.libart, p.stkphy,p.stkale,ROUND((p.stkale*1.5),0)AS stksecu,v.delliv<=30
FROM produit p
JOIN vente v ON v.codart=p.codart
JOIN fournis f ON f.numfou=v.numfou
WHERE p.stkphy<=ROUND((p.stkale*1.5),0)AND v.delliv<=30
ORDER BY f.nomfou,p.libart;
/*17. Avec le même type de sélection que ci-dessus, sortir un total des stocks par fournisseur, triés par total décroissant. */


SELECT f.nomfou,SUM(p.stkphy)
FROM produit p
JOIN vente v ON v.codart=p.codart
JOIN fournis f ON f.numfou=v.numfou
WHERE p.stkphy<=ROUND((p.stkale*1.5),0)AND v.delliv<=30
GROUP BY f.nomfou
ORDER BY SUM(p.stkphy)DESC;

/*18. En fin d'année, sortir la liste des produits dont la quantité réellement commandée dépasse 90% de la quantité annuelle prévue. */


SELECT p.codart,p.libart,p.qteann,l.qtecde
FROM produit p
JOIN ligcom l ON l.codart=p.codart
WHERE l.qtecde>(p.qteann*0.90)

/*19.Calculer le chiffre d'affaire par fournisseur pour l'année 2018, sachant que les prix indiqués sont hors taxes et que le taux de TVA est 20%.*/
SELECT EXTRACT(YEAR FROM c.datcom)AS "Année",f.nomfou,c.numcom,
SUM(((l.qteliv*l.priuni)+(l.qteliv*l.priuni*0.20)))AS "TotaLivraison"
FROM entcom c
JOIN fournis f ON f.numfou=c.numfou
JOIN ligcom l ON l.numcom=c.numcom
JOIN produit p ON p.codart=l.codart
WHERE EXTRACT(YEAR FROM c.datcom) =2018



