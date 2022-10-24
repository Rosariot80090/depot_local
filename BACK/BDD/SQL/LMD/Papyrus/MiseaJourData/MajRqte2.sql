/* 1.Appliquer une augmentation de tarif de 4% pour le prix 1, et de 2% pour le prix2, pour le fournisseur 9180.*/
UPDATE vente
SET prix1=prix1*1.04, prix2=prix2*1.02
WHERE numfou=9180

/* 2.Dans la table vente, mettre à jour le prix2 des articles dont le prix2 est nul, en affectant la valeur du prix1.*/
/*	
	UPDATE vente
	SET vente.prix2=vente.prix1
	WHERE vente.prix2=0
*/
/* 3.Mettre à jour le champ obscom, en renseignant ***** pour toutes les commandes dont le fournisseur a un indice de satisfaction inférieur à 5.*/
/*	UPDATE entcom
	JOIN fournis ON fournis.numfou=entcom.numfou
	SET entcom.obscom="******"
	WHERE fournis.satisf<5
*/

/* 4.Supprimer le produit "I110".*/   
   
    /* Si on saisie la ligne suivante:
  
   DELETE from produit
   where produit.codart="I110"
   
   un message d'erreur s'affiche disant que le produit.codart est une clé
   étrangère avec la table "vente".
   Il faut donc supprimer d'abord le produit "I110" de la table "vente., 
	ensuite supprimer de la table produit. 

	DELETE from vente
	WHERE vente.codart="I11"
	*/
  /* DELETE from produit
   where produit.codart="I110"
*/
 