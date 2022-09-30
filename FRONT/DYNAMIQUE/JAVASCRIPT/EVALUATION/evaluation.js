/* Exercice 1 - Calcul du nombre de jeunes, de moyens et de vieux

Il s'agit de dénombrer les personnes d'âge strictement inférieur à 20 ans, 
les personnes d'âge strictement supérieur à 40 ans et celles dont 
l'âge est compris entre 20 ans et 40 ans (20 ans et 40 ans y compris).

Le programme doit demander les âges successifs.

Le comptage est arrêté dès la saisie d'un centenaire. Le centenaire est compté.
        
        

Donnez le programme Javascript correspondant qui affiche les résultats.



/*
Le programme doit demander les âges successifs.
*/

var j = 0; //jeunes âge de < 20ans
var m = 0; //mature 20>=âge>=40 
var v = 0; //vieux âge > 40 
var age = 0; 


while(age < 100)
{
    var age = prompt("Saisissez l'âge");
        console.log(age)

        if(age<20){
           
            j++;
            console.log("le nombre de jeunes comptabilisé est de   :" +j )
        }
       else if(age>=20 && age<=40)
        {   
          
            m++;
            console.log("le nombre de matures comptablisé est de :" +m );

        }   
        else if(age>40){
          
            v++
            console.log("le nombre de vieux comptabilisé est de  :" +v );  

        }
        
        else (age==100);{
            console.log(age) 
}
}
document.write("le nombre de jeunes comptabilisé est de   :" +j);

document.write("<br/>le nombre de matures comptabilisé est de   :" +m);

document.write("<br>le nombre de vieux comptabilisé est de   :" +v);

// ça fonctionne !/*===============================================================================================*/

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
   "<br/>"
   "<br/>"
    //ça fonctionne !



/*===============================================================================================================================*/
/* Exercice 3 : recherche d'un prénom

Un prénom est saisi au clavier. On le recherche dans le tableau tab donné ci-après.

Si le prénom est trouvé, on l'élimine du tableau en décalant les cases qui le suivent, et en mettant à blanc la dernière case. 
Si le prénom n'est pas trouvé un message d'erreur apparait et aucun prénom ne se supprime.

 var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];

( exemple : ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", " "]; )

*/

// Saisie au clavier du prénom
let p_renom = prompt("Saisissez un prénom");
    console.log(p_renom);

// Création du tableau
let tableau = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
    console.table(tableau)
    document.write("<br/> Tableau Initial :  " +tableau)

/* tableau.indexOf(prenom) veut dire je cherche dans le tableau l'index du prénom*/
let index = tableau.indexOf(p_renom)

// Si l'index retourne -1, le prénom ne figure pas dans le tableau

    if(index != -1){/* Si l'index est différent de -1 alors le prénom recherché a 
                        un index */
        console.log("Le prénom est dans le tableau");
        document.write("<br/>le prénom " +p_renom + "  est dans le tableau");
    } 
    else {
        console.log("Le prénom n'est pas dans le tableau");
        document.write("<br/>le prénom  " + p_renom + "  n'est pas dans le tableau");
    }

/*Si le prénom est trouvé, on l'élimine du tableau en décalant les cases qui le suivent, 
et en mettant à blanc la dernière case. */

    if(index != -1){
       tableau.splice((index),1,) && tableau.push(" ");
        console.table(tableau)

    }
document.write("<br/> Le tableau Final  :  " +tableau)



/* Exercice 4 : total d'une commande

A partir de la saisie du prix unitaire noté PU d'un produit et de la quantité commandée QTECOM,
 afficher le prix à payer PAP, 
 en détaillant la remise REM et 
 le port PORT, sachant que :*/

 cl = console.log;
 pr = prompt;

 let pu = prompt("Saisir le prix unitaire du produit");
    cl("<br/>Prix Unitaire du produit   " + pu +"  €");

 let qtecom = prompt("Saisir la quantité commandée");
    cl("Quantité commandée   "+ qtecom);

 let tot = pu * qtecom;
    cl(("Total de la commande est de :  "+ tot +"  €"));

 let rem = 0;  // % de remise
 let remise = 0;  // Montant de la remise
 const FPmini = 6; // Frais de port minimum
 let FP = 0; // Frais de port
 let PAP = 0;// Prix à payer

 if(tot>=100 && tot<=200){
     rem = 0.05;
     remise = tot * rem;
    cl("Montant de la remise :  "+remise+ "  €");
 };
 if(tot>200){
     rem = 0.1;
     remise = tot * rem;
    cl("Montant de la remise :  "+remise+"  €");
 };

 let totrem = tot * (1 - rem)
    cl("Total remisé est de :  "+totrem+"  €");
 
 if(totrem>500){
     PAP = totrem;
     cl("Prix à payer :  "+PAP+ "  €");
 };

 if(totrem<=500){
     port = 0.02;
     FP = totrem * port;
     cl("Montant des frais de port:  "+FP+ "  €")
     PAP = totrem + FP;
     cl("Prix à payer :  "+PAP+ "  €");
 };
 if(totrem<=500 && FP<=6){
     PAP = totrem + FPmini;
     cl("Prix à payer :  "+PAP+ "  €");
 };
document.write("Prix unitaire du produit :  "+pu+"  €");
document.write( "<br/>Quantité commandée :  "+qtecom+"  €");
document.write( "<br/>Total de la commande :  "+tot+"  €");
document.write( "<br/>Montant de la remise :  "+remise+"  €");
document.write( "<br/>Total remisé :  "+totrem+"  €");
document.write( "<br/>Montant des frais de port :  "+FP+"  €");
document.write( "<br/>Total à payer :  "+PAP+"  €");

  
/*
Exercice 5 : vérification d'un formulaire

Effectuez le contrôle de saisie de votre formulaire Jarditou en Javascript.

Lorsqu'une erreur est détectée, l'utilisateur doit en être informé grâce à l'affichage d'un message sous le champ concerné.

Le formulaire ne peut être envoyé que lorsque tout est bon.
*/
/* A contrôler :
nom: Doit être saisi obligatoirement avec la 1ère lettre en Majuscule; Pas de chiffre;
prenom: Idem que le nom;
sexe: A renseigner obligatoirement; 
date de naissance: A renseigner obligatoiremenant");
let email_v = /^[a-z0-9.-]+@[a-z0-9.-]{2,}.[a-z]{2t au bon format jj/mm/aaaa;
code postale: Ne doit contenir que des chiffres;
ville: du texte
email: miniscule@lettreMinuscule.lettreMinuscule 
*/
let validation = document.getElementById("bouton_envoi");

let nom = document.getElementById("nom");
let nom_m = document.getElementById("nom_manquant");
let nom_v = /^[a-zA-Z]+$/;//v comme validation des caractères autorisés

let prenom = document.getElementById("prenom");
let prenom_m = document.getElementById("prenom_manquant");
let prenom_v = /^[a-zA-Z]+$/;/* caractères autorisés pour la validation du champs*/

let now = new Date();//date d'aujourd'hui
let date = document.getElementById("date");
let date_i = document.getElementById("date_invalide")
let date_v = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|[012])[\/\-]\d{4}$/;

let code = document.getElementById("codePostal");
let code_m = document.getElementById("codePostal_manquant");
let code_v = /^[0-9]*$/;//Seul les chiffres sont autorisés

let ville = document.getElementById("ville");
let ville_m = document.getElementById("ville_manquante");
let ville_v = /^[a-zA-Z]+$/;

let email = document.getElementById("email");
let email_i = document.getElementById("email_invalide");
let email_v = /^([a-z0-9_\.]+)@([\da-z\.-]+)\.([a-z\.]{2,4})$/;

/* Par l'action ci-dessous c'est nous qui allons bloquer le formulaire , sinon comme
l'attribut required est mentionné dans l'élément c'est le navigateur qui va se charger
de bloquer en demandant de compléter le champs vide à remplir obligatoirement.*/

validation.addEventListener("click", f_valid);

function f_valid(e){
    if(nom.validity.valueMissing)//si le champs "nom" est vide;Si valueMissing renvoi TRUE
    {
        e.preventDefault();//on empêche le comportement
        nom_m.textContent = "Veuillez indiquer votre NOM";//et on affiche le message d'erreur
        nom_m.style.color = "red";//couleur du message
    }else if(nom_v.test(nom.value) == false)
    {
        e.preventDefault();
        nom_m.textContent = "Format incorrect";
        nom_m.style.color = "orange";
    }else{//on ne fait rien
    }

    if(prenom.validity.valueMissing){
        e.preventDefault();
        prenom_m.textContent = "Veuillez indiquez votre PRENOM";
        prenom_m.style.color = "red";

    }else if(prenom_v.test(prenom.value) == false)
    {
        e.preventDefault();
        prenom_m.textContent = "Format incorrect";
        prenom_m.style.color = "orange";

    }       
    
    if(date.validity.valueMissing){
        e.preventDefault();
        date_i.textContent = "Veuillez renseigner votre date de naissance";
        date_i.style.color = "red";
    }
    else if(!date_v.test(date.value) == false)
    {
        e.preventDefault();
        date_i.textContent = "Date_Invalide";
        date_i.style.color = "red";
    }
    
    if(code.validity.valueMissing)
    {
        e.preventDefault();
        code_m.textContent = "Veuillez indiquer votre Code Postal";
        code_m.style.color = "red";
    }else if(code_v.test(code.value) == false)
    {
        e.preventDefault();
        code_m.textContent = "Format incorrect";
        code_m.style.color = "orange";
    }else{
    }
    if(ville.validity.valueMissing)
    {
        e.preventDefault();
        ville_m.textContent = "Veuillez renseigner la ville";
        ville_m.style.color = "red";
    }
    else if(ville_v.test(ville.value) == false)
    {
        e.preventDefault();
        ville_m.textContent = "Format incorrect";
        ville_m.style.color = "orange";
    }else{
    }
    if(email_v.test(email.value)==false)
    {
        e.preventDefault();
        email_i.textContent = "email incorrect";
        email_i.style.color = "red";
    }else{
    }

     

}
