/*1- Liste des clients français :

    Requête Northwind*/
	     
SELECT c.CompanyName,c.ContactName,c.ContactTitle,c.Phone,c.Fax,c.Country
FROM customers c
WHERE c.Country="France";






    
