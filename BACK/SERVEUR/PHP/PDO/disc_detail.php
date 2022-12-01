<?php
    // On se connecte à la BDD via notre fichier db.php :
    require "db.php";
    $db = connexionBase();

     // On récupère l'ID passé en paramètre :
     $id = $_GET["id"];

     // On crée une requête préparée avec condition de recherche :
     $requete = $db->prepare("SELECT * FROM disc join artist on disc.artist_id=artist.artist_id WHERE disc_id=? ");
     // on ajoute l'ID du disque passé dans l'URL en paramètre et on exécute :
     $requete->execute(array($id));
 
     // on récupère le 1e (et seul) résultat :
     $disc = $requete->fetch(PDO::FETCH_OBJ);
 
     // on clôt la requête en BDD
     $requete->closeCursor();
?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Disc-Détail</title>
    </head>
    <body>
        <div class="regform"><h1> Détail <h1></div>
        <div class="name">
            <form method="post" action="#">
                <div id="name">
                    <label>Titre</label><br>
                    <input placeholder="<?= $disc->disc_title ?>">
               
                    <label>Nom de l'artiste</label><br>
                    <input placeholder="<?= $disc->artist_name ?>">
                </div><br></br>
                <div id="name">
                    <label>Label </label> 
                    <input placeholder=" <?= $disc->disc_label ?>">
               
                    <label>Année</label> 
                    <input placeholder="<?= $disc->disc_year ?>">
                </div><br></br>
                <div id="name">
                    <label>Genre </label> 
                    <input placeholder="<?= $disc->disc_genre ?>">
               
                    <label>Prix </label> 
                    <input placeholder="<?= $disc->disc_price ?>">
                    </div><br></br>
            </form>  
        </div>        
        
        <div class="regform"><h1> Détail <h1></div>
        <table>
        <tr>
            <th class="center">Titre</th>
            <th class="center">Nom de l'artiste</th>
        </tr>
        <tr class="border">  
       
            <td><?= $disc->disc_title ?></td>
            <td><?= $disc->artist_name ?></td>
        </tr>
        <tr>
            <th class="center">Label</th>
            <th class="center">Année</th>
        </tr>
        <tr class="border">  
       
            <td><?= $disc->disc_label ?></td>
            <td><?= $disc->disc_year ?></td>
        </tr>
        <tr>
            <th class="center">Catégorie</th>
            <th class="center">Prix</th>
        </tr>
        <tr class="border">  
       
            <td><?= $disc->disc_genre ?></td>
            <td><?= $disc->disc_price ?></td>
        </tr>      

    </table>
    <form>
    <td width=50%>  
        <img src="images/<?= $disc->disc_picture ?>" height="50%" width="50%"  class="img-thumbnail" alt=""></td>
    </form>

    <a href="disc_form.php?id=<?= $disc->disc_id ?>">Modifier</a>
    <a href="script_disc_delete.php?id=<?= $disc->disc_id ?>">Supprimer</a>

    </body>
</html>
<style>
    .center{text-align:center;}
    .border,td{
        border-style:solid;
        }
</style>