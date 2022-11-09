<!--Départements

$departements = array(
    "Hauts-de-france" => array("Aisne", "Nord", "Oise", "Pas-de-Calais", "Somme"),
    "Bretagne" => array("Côtes d'Armor", "Finistère", "Ille-et-Vilaine", "Morbihan"),
    "Grand-Est" => array("Ardennes", "Aube", "Marne", "Haute-Marne", "Meurthe-et-Moselle", "Meuse", "Moselle", "Bas-Rhin", "Haut-Rhin", "Vosges"),
    "Normandie" => array("Calvados", "Eure", "Manche", "Orne", "Seine-Maritime")
);
-->
<!--A partir du tableau ci-dessus:

    Affichez la liste des régions (par ordre alphabétique) suivie du nom des départements

    Affichez la liste des régions suivie du nombre de départements

-->
<?php
$departements = array(
    "Hauts-de-france" => array("Aisne", "Nord", "Oise", "Pas-de-Calais", "Somme"),
    "Bretagne" => array("Côtes d'Armor", "Finistère", "Ille-et-Vilaine", "Morbihan"),
    "Grand-Est" => array("Ardennes", "Aube", "Marne", "Haute-Marne", "Meurthe-et-Moselle", "Meuse", "Moselle", "Bas-Rhin", "Haut-Rhin", "Vosges"),
    "Normandie" => array("Calvados", "Eure", "Manche", "Orne", "Seine-Maritime")
);

/*Affichez la liste des régions (par ordre alphabétique) suivie du nom des départements*/


ksort($departements);// je classe le tableau $departement par ordre alpha

echo"<pre>"; // La balise <pre> organise l'affichage

foreach($departements as $region => $depts) // je déclare le tableau en $clé => $valeur et je parcours les $clé et j'affiche
{
//J'affiche le nom de la Région et avec <ul> je prépare la liste désordonnée des départements

    echo 'La région ' . $region . ' a pour département :  <br><ul>'; 

        foreach($depts as $departement) // je parcours les éléments de $valeur et j'affiche
        {
            
        echo  $departement.  '<br>';// J'affiche les départements
            
    }
    echo'</ul>';//Je ferme chaque liste


}
echo"</pre>";


    //Affichez la liste des régions suivie du nombre de départements


?>
