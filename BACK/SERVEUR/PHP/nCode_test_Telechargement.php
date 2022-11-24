<?php
    var_dump($_FILES);
    $message="";

    if(isset($_POST["Envoyer le fichier"]))//si le bouton existe
    {
        $message="Nom du fichier : <b> ".$_FILES["fichier"]["name"]."</b>";//afficher le nom du fichier porter ver le serveur
        $message.="Nom temporaire du fichier : <b> ".$_FILES["fichier"]["tmp_name"]."</b><br/>";
        $message.="Type du fichier : <b> ".$_FILES["fichier"]["Type"]."</b><br/>";
        $message.="Taille du fichier : <b> ".$_FILES["fichier"]["size"]."octets</b><br/>";
        //A ce stade le Fichier est Temporairement enregistré sur le Serveur. 
        //Pour l'enregistrer en dur sur le Serveur:
        // move_uploaded_file(où se trouve le fichier, dossier destination, nom du fichier )
        if(move_uploaded_file($_FILES["fichier"]["tmp_name"], "uploads/".$_FILES["fichier"]["name"]))
            $message.="<li>Fichier chargé avec succès</li>";
        else
            $message.="<li>Erreur de chargement</li>";
        
    }
?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Upload</title>
</head>
<body>
    <form action="nCode_test_Telechargement.php" method="post" enctype="multipart/form-data">

        <input type="file" name="fichier"/><br><br>
        <input type="submit" name="valider" value="Envoyer le fichier" />

    </form>
    <div>
        <?php echo $message ?>
    </div>


</body>
</html>
