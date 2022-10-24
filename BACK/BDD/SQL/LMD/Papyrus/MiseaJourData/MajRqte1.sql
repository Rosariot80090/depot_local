/* 1.Appliquer une augmentation de tarif de 4% pour le prix 1, 
et de 2% pour le prix2, pour le fournisseur 9180.*/

UPDATE vente
SET prix1=prix1*1.04, prix2=prix2*1.02
WHERE numfou=9180