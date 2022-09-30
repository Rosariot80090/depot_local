/* Exercice 4 : total d'une commande

A partir de la saisie du prix unitaire noté PU d'un produit et de la quantité commandée QTECOM,
 afficher le prix à payer PAP, 
 en détaillant la remise REM et 
 le port PORT, sachant que :*/

 cl = console.log;
 pr = prompt;

 let pu = prompt("Saisir le prix unitaire du produit");
    cl("Prix Unitaire du produit   " + pu +"  €");

 let qtecom = prompt("Saisir la quantité commandée");
    cl("Quantité commandée   "+ qtecom);

 let tot = pu * qtecom;
    cl(("Total de la commande est de :  "+ tot +"  €"));

 let rem = 0;  // % de remise
 let remise = 0;  // Montant de la remise
 const FPmini = 6; // Frais de port minimum
 let FP = 0; // Frais de port
 let PAP = 0;// Prix à payer

 if(tot>=100 && tot<=200){
     rem = 0.05;
     remise = tot * rem;
    cl("Montant de la remise :  "+remise+ "  €");
 };
 if(tot>200){
     rem = 0.1;
     remise = tot * rem;
    cl("Montant de la remise :  "+remise+"  €");
 };

 let totrem = tot * (1 - rem)
    cl("Total remisé est de :  "+totrem+"  €");
 
 if(totrem>500){
     PAP = totrem;
     cl("Prix à payer :  "+PAP+ "  €");
 };

 if(totrem<=500){
     port = 0.02;
     FP = totrem * port;
     cl("Montant des frais de port:  "+FP+ "  €")
     PAP = totrem + FP;
     cl("Prix à payer :  "+PAP+ "  €");
 };
 if(totrem<=500 && FP<=6){
     PAP = totrem + FPmini;
     cl("Prix à payer :  "+PAP+ "  €");
 };
document.write("Prix unitaire du produit :  "+pu+"  €");
document.write( "<br/>Quantité commandée :  "+qtecom+"  €");
document.write( "<br/>Total de la commande :  "+tot+"  €");
document.write( "<br/>Montant de la remise :  "+remise+"  €");
document.write( "<br/>Total remisé :  "+totrem+"  €");
document.write( "<br/>Montant des frais de port :  "+FP+"  €");
document.write( "<br/>Total à payer :  "+PAP+"  €");
