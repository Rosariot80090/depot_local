/* Exercice 1 - Calcul du nombre de jeunes, de moyens et de vieux

Il s'agit de dénombrer les personnes d'âge strictement inférieur à 20 ans, 
les personnes d'âge strictement supérieur à 40 ans et celles dont 
l'âge est compris entre 20 ans et 40 ans (20 ans et 40 ans y compris).

Le programme doit demander les âges successifs.

Le comptage est arrêté dès la saisie d'un centenaire. Le centenaire est compté.
        
        

Donnez le programme Javascript correspondant qui affiche les résultats.



/*
Le programme doit demander les âges successifs.
*/

var j = 0; //jeunes âge de < 20ans
var m = 0; //mature 20>=âge>=40 
var v = 0; //vieux âge > 40 
var age = 0; 


while(age < 100)
{
    var age = prompt("Saisissez l'âge");
        console.log(age)

        if(age<20){
           
            j++;
            console.log("le nombre de jeunes comptabilisé est de   :" +j )
        }
       else if(age>=20 && age<=40)
        {   
          
            m++;
            console.log("le nombre de matures comptablisé est de :" +m );

        }   
        else if(age>40){
          
            v++
            console.log("le nombre de vieux comptabilisé est de  :" +v );  

        }
        
        else (age==100);{
            console.log(age) 
}
}
document.write("le nombre de jeunes comptabilisé est de   :" +j);

document.write("<br/>le nombre de matures comptabilisé est de   :" +m);

document.write("<br>le nombre de vieux comptabilisé est de   :" +v);

// ça fonctionne !