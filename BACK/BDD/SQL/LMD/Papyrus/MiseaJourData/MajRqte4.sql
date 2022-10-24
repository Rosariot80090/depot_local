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
	DELETE from produit
   where produit.codart="I110"