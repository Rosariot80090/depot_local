<?php
$facture ["Janvier"]=500;
$facture ["Février"]=620;
$facture ["Mars"]=300;
$facture ["Avril"]=130;
$facture ["Mai"]=560;
$facture ["Juin"]=350;

 
 $facture_sixmois = 0; 
 
 foreach ($facture as $mois => $montant) 
 { 
    echo "Facture du mois de $mois : $montant Euros<br>"; 
    $facture_sixmois += $montant; 
 } 
 

 echo "Facture total de six mois : <b>$facture_sixmois Euros</b>"; 

