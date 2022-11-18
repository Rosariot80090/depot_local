

  <!-- 

/*   Trouvez le numéro de semaine de la date suivante : 14/07/2019. */
    Ajoutez 1 mois à la date courante.

    -->
<!--Comment déterminer si une année est bissextile ?

Réponse  :  -->

<form method="post" action="nCode_test_DateHeures.php">
    <p><label for="annee"> Entrez votre année_test : </label> <input type="number" name="annee"> 
    <input type="submit" name="valider" value="Valider"></p>
</form>

<?php

if(isset($_POST['valider']))
{
  if(isset($_POST['annee']))
  {
    if(!empty($_POST['annee']))
    {
      $annee=htmlspecialchars($_POST['annee']);
      
      if(($annee % 4 == 0)&&($annee % 100 != 0) || ($annee % 400 == 0))
        {
          echo "L'année  "  .$annee. "  est une année bissextile" ;       
        }
      else
        {
          echo "L'année  ".$annee. "  n'est pas une année bissextile ";
        }
    }
  }
}

   
?>

<!--
/*Combien reste-t-il de jours avant la fin de votre formation ?

          Réponse  :  */

 /*         $origin = new DateTime('now');
            $target = new DateTime('2022-12-02');
            $interval = date_diff($origin, $target);
            echo $interval -> format('%R%a days');
*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*Affichez l'heure courante sous cette forme : 11h25.

            Réponse  :  */

//echo date("H"),'h',date("i");

/*--------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*Montrez que la date du 32/17/2019 est erroné 

            Reponse: */

/*echo 'Date valide ?';
var_dump(checkdate(17,32,2019));//var_dump permet d'afficher le contenu - checkdate vérifie la validité de la date et renvoie le booléen false ou true : ici false
echo '<br>';

echo 'Date valide ?';    Comment déterminer si une année est bissextile ?
var_dump(checkdate(2,29,2015));// false parce que 2015 non bissextile
echo '<br>';

echo 'Date valide ?';
var_dump(checkdate(2,28,2015));// true
echo '<br>';

--------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*Que s'est-il passé le 1000200000 ? 

            Reponse :

 echo 'Le timestamp 1000200000 représente :  '  .date('d-m-Y',1000200000);
 echo '<br> Attentat du 11 septembre 2001'; 
 
 ---------------------------------------------------------------------------------------------------------------------------------------------------------*/

