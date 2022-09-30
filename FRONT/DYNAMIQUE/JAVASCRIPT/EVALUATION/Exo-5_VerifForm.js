/*
Exercice 5 : vérification d'un formulaire

Effectuez le contrôle de saisie de votre formulaire Jarditou en Javascript.

Lorsqu'une erreur est détectée, 
l'utilisateur doit en être informé grâce à l'affichage 
d'un message sous le champ concerné.

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
