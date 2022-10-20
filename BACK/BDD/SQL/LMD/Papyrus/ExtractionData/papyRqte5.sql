/*5. Quels sont les fournisseurs situés dans les départements 75, 78, 92, 77 ?

        L’affichage (département, nom fournisseur) sera effectué par département décroissant, puis par ordre alphabétique. */

SELECT f.numfou,f.nomfou,f.posfou
FROM fournis f
WHERE f.posfou LIKE "7%";


/*7. Quelles sont les commandes du jour qui ont des observations particulières ?

        Afficher numéro de commande et date de commande */
        
/*SELECT numcom, datcom,obscom
FROM entcom
WHERE obscom!="";*/

/*8. Lister le total de chaque commande par total décroissant.

        Afficher numéro de commande et total */