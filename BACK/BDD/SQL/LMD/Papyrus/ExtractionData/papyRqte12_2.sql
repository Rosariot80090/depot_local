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
 
 

