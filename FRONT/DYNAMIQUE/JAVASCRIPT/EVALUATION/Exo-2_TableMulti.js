/* Exercice 2 : Table de multiplication

Ecrivez une fonction qui affiche une table de multiplication."le nombre de jeunes comptabilisé est de   :" +j 
2 x 7 = 14
3 x 7 = 21 ...

*/

let i = 0
const tabledemultiplication = prompt("Entrer la table de multiplication")
let resultat = 0;

console.log("Table de multiplication par " + tabledemultiplication);
console.log("=============================");


document.write("<br/>Table de multiplication par " + tabledemultiplication);
document.write("<br/>=====================");

    for(i=1; i<=10; i++)
    {
        resultat=tabledemultiplication*i;
        console.log("Le resultat de " + tabledemultiplication + " x " + i + " = "+resultat);
        
        document.write("<br/>Le résultat de " + tabledemultiplication + " x " + i + " = " +resultat);
    }
   
    //ça fonctionne !


