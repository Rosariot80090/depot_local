<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>VerifForm</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="../EVALUATION/CSS/contact.css">
    
</head>
<body>
      
    <!--insertion image JARDITOU-->
    <header>
        <div id="header1">
        
            <img class="logo" src="../EVALUATION/Images_Eval/jarditou_logo.jpg" alt="logo jarditou" title="logo jarditou" > 
          
        </div>

        <div id="header2">
        
            <p class="slogan">Tout sur le jardin</p> 
        
        </div>
    </header>
    
        <!--création d'un menu horizontal-->
    <nav class="pave">
        
        <a class="pave" href="../EVALUATION/HTML/accueil.html" title="Accueil">Accueil</a>
        <a class="pave" href="../EVALUATION/HTML/tableau.html" title="Tableau">Tableau</a>
        <a class="pave" href="../EVALUATION/HTML/contact.html" title="Contact">Contact</a> 
        
    </nav>       
       
        <!--insertion d'une image PROMOTION-->
    <img class="promo" src="../EVALUATION/Images_Eval/promotion.jpg" alt="promo" title="promotion sur lames terrasse">
    
    <br>
        <!--Ouverture d'une section "Accueil"-->    

    <section><h3>Contact</h3></section>
    <hr>


<form action="monscript.php" method="get" id="contactForm">


    <fieldset>
        <legend>Vos coordonnées</legend>

        <div class = "form-group">
            <label for="nom">Votre nom  *:</label>
            <input type="text" name="nom" id="nom" required="required">
            <span id = "nom_manquant"></span>
            
        </div>

            <br>

        <div class = "form-group">
            <label for="prenom">Votre prénom  *:</label>
            <input type="text" name="prenom" id="prenom" required="required">
            <span id = "prenom_manquant"></span>
            
        </div>    

            <br>

        <div class ="form-group">
            Sexe* :
            <input type="radio" name="genre" value="homme">
            <label for="homme">Homme</label>
            <input type="radio" name="genre" value="femme">
            <label for="femme">Femme</label>
        </div>    

            <br>

        <div class = "form-group">
            
            Date de naissance* :
            <input type="date" name="ddn" id="date" required="required">
            <span id = "date_invalide" ></span>
        <br><br>
            <label for="codePostal">Code postal*</label>
            <input type="number" name="codePostal" id="codePostal" required="required">
            <span id = "codePostal_manquant" ></span>
        <br><br>
            <label for="ville">Ville*</label>
            <input type="text" name="ville" id="ville" required="required">
            <span id = "ville_manquante" ></span>
        <br><br>
            <label for="email">Email*</label>
            <input type="email" name="email" id="email" required="required" >
            <span id = "email_invalide"></span>
        <br>

    </fieldset>

        <br><br>

    <fieldset>
        <legend>Votre demande</legend>

        <label for="sujet">Sujet *:</label> <select id="sujet">
            <option value="veuillez sélectionner un sujet">Veuillez sélectionner un sujet</option>
            <option value="mes commandes">Mes commandes</option>
            <option value="question sur un produit">Question sur un poduit</option>
            <option value="réclamation">Réclamation</option>
            <option value="autres">Autres</option>
        </select>
        <br>
            <p>
                Votre question* :
                <textarea name="commentaire" rows="1" cols="50"></textarea>
            </p>
        <br>
            <input type="checkbox" name="j'accepte">
            * J'accepte le traitement informatique de ce formulaire
        <br><br>        
    
        <br>
            <input type="submit" value="Envoyer" id="bouton_envoi">
            <input type="submit" value="Annuler">
        <br><br>
    </fieldset>
<nav class="pave">
        
            <a class="pave" href="Mentions_légales" title="Mentions_légales">Mentions légales</a>
            <a class="pave" href="Horaires" title="Horaires">Horaires</a>
            <a class="pave" href="Plan_du_site" title="Plan_du_site">Plan du site</a> 
            
</nav>    
</form>
<?php
    
?>
<script src="../EVALUATION/Exo-5_VerifForm.js"></script>
</body>
</html>