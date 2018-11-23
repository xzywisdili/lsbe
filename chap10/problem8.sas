data markup;
  input manuf : $10. Markup;
datalines;
Cannondale 1.05
Trek 1.07
;
run;

data bicycles;
  set "F:\D-codes\SAS\Learning\bicycles.sas7bdat";
run; 

proc sort data=bicycles;
  by Manuf;
run;

data Markup_Prices;
  merge bicycles(rename=(Manuf=manuf)) markup;
  by manuf;
  NewTotal = UnitCost * Markup;
run;

proc print data=Markup_Prices;
  title "markup prices";
run;
