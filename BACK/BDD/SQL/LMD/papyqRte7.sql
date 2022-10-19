/*7. Quelles sont les commandes du jour qui ont des observations particulières ?

        Afficher numéro de commande et date de commande */
        
SELECT numcom, datcom,obscom
FROM entcom
WHERE obscom!=" ";