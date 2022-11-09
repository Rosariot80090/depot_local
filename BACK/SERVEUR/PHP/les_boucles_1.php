<!--Ecrire un script PHP qui affiche tous les nombres impairs entre 0 et 150, 
par ordre croissant : 1 3 5 7... -->

<?php

for ($i=0;$i<150;$i++){
    if($i % 2!=0){/*modulo de 2 différent de zéro. si le rest est égale
        à zéro, veut dire que le nombre divisé par 2 est pair.*/
        echo  $i ;
        echo "  ";/* sert mettre un espace entre chaque nombre*/
        
    }
 }
?>


