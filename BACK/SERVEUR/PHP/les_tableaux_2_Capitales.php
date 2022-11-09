<!-- Capitales-->
<?php

$capitales = array(
    "Bucarest" => "Roumanie",
    "Bruxelles" => "Belgique",
    "Oslo" => "Norvège",
    "Ottawa" => "Canada",
    "Paris" => "France",
    "Port-au-Prince" => "Haïti",
    "Port-d'Espagne" => "Trinité-et-Tobago",
    "Prague" => "République tchèque",
    "Rabat" => "Maroc",
    "Riga" => "Lettonie",
    "Rome" => "Italie",
    "San José" => "Costa Rica",
    "Santiago" => "Chili",/*$ini = substr($capitale, 0, 1 );*/
    "Sofia" => "Bulgarie",
    "Alger" => "Algérie",
    "Amsterdam" => "Pays-Bas",
    "Andorre-la-Vieille" => "Andorre",
    "Asuncion" => "Paraguay",
    "Athènes" => "Grèce",
    "Bagdad" => "Irak",
    "Bamako" => "Mali",
    "Berlin" => "Allemagne",
    "Bogota" => "Colombie",
    "Brasilia" => "Brésil",
    "Bratislava" => "Slovaquie",
    "Varsovie" => "Pologne",
    "Budapest" => "Hongrie",
    "Le Caire" => "Egypte",
    "Canberra" => "Australie",
    "Caracas" => "Venezuela",
    "Jakarta" => "Indonésie",
    "Kiev" => "Ukraine",
    "Kigali" => "Rwanda",
    "Kingston" => "Jamaïque",
    "Lima" => "Pérou",
    "Londres" => "Royaume-Uni",
    "Malé" => "Maldives",
    "Mexico" => "Mexique",
    "Minsk" => "Biélorussie",
    "Moscou" => "Russie",
    "Nairobi" => "Kenya",
    "New Delhi" => "Inde",
    "Stockholm" => "Suède",
    "Téhéran" => "Iran",
    "Tokyo" => "Japon",
    "Tunis" => "Tunisie",
    "Copenhague" => "Danemark",
    "Dakar" => "Sénégal",
    "Damas" => "Syrie",
    "Dublin" => "Irlande",
    "Erevan" => "Arménie",
    "La Havane" => "Cuba",
    "Helsinki" => "Finlande",
    "Islamabad" => "Pakistan",
    "Vienne" => "Autriche",
    "Vilnius" => "Lituanie",
    "Zagreb" => "Croatie"
);

/* A partir du tableau ci-dessus:

    Affichez la liste des capitales (par ordre alphabétique) suivie du nom du pays.

                        ---------Réponse----------*/

/*ksort($capitales);

foreach($capitales as $capitale=>$pays)
{
  
    echo $capitale .' est la capitale de '.$pays.  ' <br> ';
}
*/
/* Affichez la liste des pays (par ordre alphabétique) suivie du nom de la capitale.

                        ----------Réponse------------*/

/*
asort($capitales);
foreach($capitales as $capitale=>$pays)
{/*$ini = substr($capitale, 0, 1 );*/

/*foreach($capitales as $capitale=>$pays)                  
$pays = count($capitales);

    echo 'Le tableau contient '.$pays. '    pays.';


/* Supprimer du tableau toutes les capitales commençant par la lettre 'B', 
    puis affichez le contenu du tableau.
    
                        -----------Réponse------------*/

//  Suppression des capitales commençant par la lettre 'B'

/*
ksort ($capitales);
foreach($capitales as $capitale => $pays)
{
    $ini = substr($capitale, 0, 1 );
    if ($ini == "B")
    {
        unset($capitales[$pays]);
       
    }
    else echo $capitale.   "   ========>   " . $pays . "<br>";
}

*/
