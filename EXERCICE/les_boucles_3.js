/*Moyenne*/
/*Ecrire un programme qui saisit des entiers 
et en affiche la somme et la moyenne 
(on arrête la saisie avec la valeur 0).*/
/*
var i=0;
var somme=0;

    while (nombre!=0){

    var nombre= window.prompt("Entrer un chiffre");
    

    if (nombre==0){
        break
    }
    
    somme=Number(somme)+Number(nombre);

    i++
        
    }

    var moy = (somme)/(Number(i));
        console.log(moy)
        
*/
        var i = 0;
        const tabledemultiplication = 9

        console.log("Table de multiplication par" +tabledemultiplication);
        console.log("=============================");

while (i <= 10); 
// ou for(i=0;i<11;i++)
{   
    // Exécute le calcul et stocke le résultat   
    // dans une variable nommée ‘resultat’  
    resultat = tabledemultiplication * i;

    // A chaque tour, on affiche le résultat courant à l’utilisateur
    console.log("Le résultat de "+tabledemultiplication+" x "+i+" est : "+resultat);

    // A chaque tour, on ajoute +1 à la variable i  
    i++; 
}