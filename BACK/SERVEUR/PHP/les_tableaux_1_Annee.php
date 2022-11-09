<!--1. Mois de l'année non bissextile

Créez un tableau associant à chaque mois de l’année le nombre de jours du mois.

Utilisez le nom des mois comme clés de votre tableau associatif.

Affichez votre tableau (dans un tableau HTML) pour faire apparaitre 
sur chaque ligne le nom du mois et le nombre de jours du mois.

Triez ensuite votre tableau en utilisant comme critère le nombre de jours, puis affichez le résultat.
-->
<h2 class="center"> Mois de l'année non bissextile </h2>

<table class="bordure">
    <thead>
        <tr>
            <th class="center"> Mois de l'année </th>
            <th class="center"> Nombre de jours associés </th>
        </tr>
    </thead>

    <tbody>
        <tr>
            <td class="center"> Janvier </td>
            <td class="center"> 31 </td>
            </tr>
        <tr>
            <td class="center"> Février </td>
            <td class="center"> 28 </td>
            </tr>
        <tr>
            <td class="center"> Mars </td>
            <td class="center"> 31 </td>
            </tr>
        <tr>
            <td class="center"> Avril </td>
            <td class="center"> 30 </td>
            </tr>
        <tr>    
            <td class="center"> Mai </td>
            <td class="center"> 31 </td>
            </tr>
        <tr>    
            <td class="center"> Juin </td>
            <td class="center"> 30 </td>
            </tr>
        <tr>
            <td class="center"> Juillet </td>
            <td class="center"> 31 </td>
            </tr>
        <tr>
            <td class="center"> Août </td>
            <td class="center"> 31 </td>
            </tr>
        <tr> echo $capitales;
            <td class="center"> Septembre </td>
            <td class="center"> 30 </td>
            </tr>
        <tr>
            <td class="center"> Octobre </td>
            <td class="center"> 31 </td>
            </tr>
        <tr>
            <td class="center"> Novembre </td>
            <td class="center"> 30 </td>
            </tr>
        <tr>
            <td class="center"> Décembre </td>
            <td class="center"> 31 </td>
            </tr>
    </tbody>
</table>
<br>
<br>
<?php
 
$tableau = array('Janvier'=>31, 'Février'=>28, 'Mars'=>31, 'Avril'=>30, 'Mai'=>31, 'Juin'=>30, 
'Juillet'=>31, 'Août'=>31, 'Septembre'=>30, 'Octobre'=>31, 'Novembre'=>30,'Décembre'=>31);

asort($tableau);

 foreach($tableau as $mois=>$nbrJours)
  { 

    echo 'Le nombre de jours associant le mois de  ' .$mois.' est '.$nbrJours.'<br>'; 
 
  } 
 
?>

<style>
    .center{text-align:center;}
    .bordure,td,th{
        border-style:solid;
        border-collapse:separate;}
</style>