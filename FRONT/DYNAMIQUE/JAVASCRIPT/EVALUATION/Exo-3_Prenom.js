/* Exercice 3 : recherche d'un prénom

Un prénom est saisi au clavier. On le recherche dans le tableau tab donné ci-après.

1)  Si le prénom est trouvé, on l'élimine du tableau en décalant les cases qui le suivent, 
    et en mettant à blanc la dernière case. 
2)  Si le prénom n'est pas trouvé un message d'erreur apparait 
    et aucun prénom ne se supprime.

( exemple : ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", " "]; )

*/

// Saisie au clavier du prénom
let prenom = prompt("Saisissez un prénom");
    console.log(prenom);
document.write( "Prénom rechercé dans le tableau ci-dessous  :  " +prenom)
// Création du tableau
let tableau = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
    console.table(tableau)
document.write("<br><br/>Le tableau :  " +tableau);
/* tableau.indexOf(prenom) veut dire je cherche dans le tableau l'index du prénom*/
let index = tableau.indexOf(prenom)

// Si l'index retourne -1, le prénom ne figure pas dans le tableau

    if(index != -1){/* Si l'index est différent de -1 alors le prénom recherché a 
                        un index */
        console.log("Le prénom est dans le tableau");
        document.write("<br><br/>le prénom " +prenom + "  est dans le tableau");
    } 
    else {
        console.log("Le prénom n'est pas dans le tableau");
        document.write("<br><br/>le prénom  " + prenom + "  n'est pas dans le tableau");
    }

/*Si le prénom est trouvé, on l'élimine du tableau en décalant les cases qui le suivent, 
et en mettant à blanc la dernière case. */

    if(index != -1){
       tableau.splice((index),1,) && tableau.push("à blanc ");
        console.table(tableau)
    }
document.write("<br><br/> le nouveau tableau sans le prénom trouvé  : <br><br/>" +tableau);