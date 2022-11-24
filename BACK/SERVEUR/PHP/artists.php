<?php

    // on importe le contenu du fichier "db.php"
    include "db.php";
    // on exécute la méthode de connexion à notre BDD
    $db = connexionBase();

    // on lance une requête pour chercher toutes les fiches d'artistes
    $requete = $db->query("SELECT * FROM artist");
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
      <title>PDO - Liste</title>
</head>
<body>
    <table class="border">
        <tr>
            <th class="center">ID</th>
            <th class="center">Nom</th>
        </tr>

        <?php foreach ($tableau as $artist): ?>

       
        <tr>
            <td class="center"><?= $artist->artist_id ?></td>
            <td class="center"><?= $artist->artist_name ?></td>
        </tr>

        <?php endforeach; ?>

    </table>
</body>

<style>
    .center{text-align:center;}
    .border,td,th{
        border-style:solid;
        border-collapse:collapse;}
</style>
</html>