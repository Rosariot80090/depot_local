

<?php

// on importe le contenu du fichier "db.php"
include "db.php";
// on exécute la méthode de connexion à notre BDD
$db = connexionBase();

// on lance une requête pour chercher toutes les fiches d'artistes
$requete = $db->query("SELECT * FROM disc join artist on artist.artist_id=disc.artist_id" );

// on récupère tous les résultats trouvés dans une variable
$tableau = $requete->fetchAll(PDO::FETCH_OBJ);

// on clôt la requête en BDD
$requete->closeCursor();

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ListeDesDiscs</title>
</head>
<body>
    <table>
 
        <?php foreach ($tableau as $disc):?>

        <tr >
        <span>
        <td width=50%>  
            <img src="images/<?= $disc->disc_picture ?>" height="50%" width="50%" alt="">
        </td>
        </span>
        <span> 
        <td class="detail">
            Titre :<?= $disc->disc_title ?><br>
            Nom de l'artiste :<?= $disc->artist_name ?><br>
            Label :<?= $disc->disc_label ?><br>
            Année :<?= $disc->disc_year ?><br>
            Genre :<?= $disc->disc_genre ?><br>
            Prix :<?= $disc->disc_price ?><br>
            <a href="disc_detail.php?id=<?= $disc->disc_id ?>">Détail</a>
        </td>
        </span>
        </tr>
             
        <?php endforeach; ?>

    </table>   

</body>
</html>

<style>
    .center{text-align:center;}
    .detail{
        position:relative;
        right:200px;
    }
</style>

  