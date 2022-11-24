<!--Lecture d'un fichier

Téléchargez ce fichier, qui contient une liste de sites indispensables à la compréhension du monde moderne.

Écrire un programme qui lit ce fichier et qui construit une page web contenant une liste de liens hypertextes.

    Utilisez la fonction file() qui permet de lire directement un fichier et renvoie son contenu sous forme de tableau.
-->
<!--
<a href='http://www.python.org/'> Python</a><br><br>
<a href='https://fr.wikipedia.org/wiki/Joel_et_Ethan_Coen'> Joel et Etan</a>

-->

<?php
       
   // $sites = file('https://ncode.amorce.org/ressources/Pool/MS_FULL_STACK/PHP/src/liens.txt',);
    
    $tab=[file('https://ncode.amorce.org/ressources/Pool/MS_FULL_STACK/PHP/src/liens.txt',)];
        

    echo '<pre>';
    print_r ($tab) ;
    echo '<pre>';

?>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>   </title>
</head>
<body>

    <?php foreach($tab as $v): ?>
        <p><?= str($v) ?></p>
    <?php endforeach; ?>


</body>
</html>
