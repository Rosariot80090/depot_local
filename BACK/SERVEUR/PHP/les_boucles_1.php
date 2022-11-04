<!--Ecrire un script PHP qui affiche tous les nombres impairs entre 0 et 150, 
par ordre croissant : 1 3 5 7... -->

<?php

for ($i=0;$i<150;$i++){
    if($i % 2!=0){
        echo  $i ;
        echo "  ";
        
    }
 }
?>


