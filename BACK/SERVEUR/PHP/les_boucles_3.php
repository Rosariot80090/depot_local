<!-- Ecrire un script qui affiche la table de multiplication totale 
de {1,...,12} par {1,...,12} dans un tableau HTML.  -->

<h2 class="center">Table de multiplication</h2>
<table class="demo bordure">
<?php

for ($i=1;$i<=12;$i++)
{
    echo ("<tr>");//1ère ligne horizontale de 1 à 12

    for ($j=1;$j<=12;$j++)
    {
        $p=$i*$j;//produit
        echo ("<td class='center'>".$p."</td>");//ligne verticale de 1 à 12
    }

    echo ("</tr>");
}

?>
</table>
<style>
    .center {text-align: center;}
    .demo{
        margin:auto;
        background-color: lightgreen;
    }
    .bordure,td,th{
        border-style:solid;
        border-collapse:separate;
    }
</style>   