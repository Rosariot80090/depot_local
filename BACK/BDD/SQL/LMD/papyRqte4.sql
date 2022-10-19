/*4. Extraire les produits ayant un stock inférieur ou égal au stock d'alerte, et dont la quantité annuelle est inférieure à 1000. 

        Informations à fournir : n° produit, libellé produit, stock actuel, stock d'alerte, quantité annuelle) */
        
SELECT codart, libart, stkphy,stkale, qteann
FROM produit p
WHERE stkphy<= stkale AND qteann<1000;