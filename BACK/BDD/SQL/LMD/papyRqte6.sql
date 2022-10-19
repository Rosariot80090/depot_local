/*6. Quelles sont les commandes passées en mars et en avril ? */

SELECT EXTRACT(MONTH FROM datcom)AS MoisCde, numcom , numfou
FROM entcom
WHERE EXTRACT(MONTH FROM datcom)="3"OR EXTRACT(MONTH FROM datcom)="4" ;