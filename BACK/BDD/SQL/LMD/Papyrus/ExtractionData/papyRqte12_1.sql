/*12. Coder de 2 manières différentes la requête suivante : 
        Lister le nom des fournisseurs susceptibles de livrer au moins un article. */
        /* Par opposition quel est le fournisseur qui ne peut rien livrer*/

SELECT DISTINCT f.numfou, f.nomfou, c.numcom, p.codart, p.libart, p.stkphy, l.qtecde, l.qteliv
FROM entcom c
RIGHT OUTER JOIN fournis f ON f.numfou=c.numfou /*Priorité à doite de JOIN.
Me retourne tous les fournisseur même ceux qui n'ont pas passés commande*/
LEFT OUTER JOIN ligcom l ON c.numcom=l.numcom /*Priorité à gauche de JOIN. Me retourne tous les numéros de commandes*/
RIGHT OUTER JOIN produit p ON l.codart=p.codart/* Me retourne tous les produits même ceux qui n'ont pas été commandés*/
WHERE l.qteliv!=0
ORDER BY l.numcom


