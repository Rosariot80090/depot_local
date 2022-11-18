<?php

//Ecrivez une fonction qui calcul la somme des valeurs d'un tableau

//La fonction doit prendre un paramètre de type tableau

/*
 /*$resultat = somme($tab);*/
/*
$resultat doit contenir 17 */
                            // Réponse

/*  $tab = array(4, 3, 8, 2);
echo "la somme des valeurs du tableau [4, 3, 8, 2] est " . array_sum($tab);*/
    
            //----EXERCICE SUIVANT---

/*Créer une fonction qui vérifie le niveau de complexité d'un mot de passe

Elle doit prendre un paramètre de type chaîne de caractères. Elle retournera une valeur booléenne qui vaut true si le paramètre (le mot de passe) respecte les règles suivantes :

    Faire au moins 8 caractères de long
    Avoir au moins 1 chiffre
    Avoir au moins une majuscule et une minuscule

$resultat = complex_password("TopSecret42");

$resultat doit contenir true.

    Aidez-vous des expressions régulières !*/

/*@$password=$_POST["password"];
@$valider=$_POST["Valider"];
$message="";
if(isset($valider)){
    if(preg_match("",$password))
        $message="<li style='color:green'>Chaine valide</li>";
    else
        $message="<li style='color:red'>Chaine valide</li>";
}*/
if(isset($_POST['submit'])){
    $pass=$_POST['password'];

$uppercase=preg_match('@[A-Z@]',$pass);
$lowercase=preg_match('@[a-z@]',$pass);
$number=preg_match('@[0-9]@',$pass);
$specialchars=preg_match('@[^\w]@',$pass);

if(!$uppercase || !$lowercase || !$number || !$specialchars || strlen($pass)<8 || empty($pass))
{if(empty($pass)){
    echo "Mot de passe OBLIGATOIRE";
}elseif(strlen($pass)<8){
    echo "Le Mot de passe doit contenir HUIT caractères";
}
    echo "Le mot de passe est obligatoire, il doit contenir 8 caractères dont 1 chiffre, 1 Majuscule, 1 miniscule et 1 caractère spécial";
}

}

?>
<form action="#" method="post">
    <div>
        <label for ="password">Password</label>
        <input type="text" required id="password" name="password" />

        <input type="submit" name="valider" value="Valider">
        <p> votre mot de passe doit contenir au moins
            <span id="longueur" class="invalid"> 8 caractères de long </span> /
            <span id="chiffre" class="invalid"> 1 chiffre </span> /
            <span id="miniscule" class="invalid"> 1 minuscule </span> /
            <span id="Majuscule" class="invalid" > 1 Majuscule </span>
        </p>
    </div>
</form>

