/*1. Quelles sont les commandes du fournisseur n°9120 ?*/

SELECT f.numfou, c.numcom
FROM fournis f, entcom c
WHERE f.numfou = 9120
ORDER BY c.numcom;