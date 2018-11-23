data Inventory;
  /* change to your file path*/
  set "F:\D-codes\SAS\Learning\inventory.sas7bdat";
run;

proc sort data=Inventory out=Inventory;
  by Model;
run;

data NewProducts;
  /* change to your file path*/
  set "F:\D-codes\SAS\Learning\newproducts.sas7bdat";
run;

proc sort data=NewProducts out=NewProducts;
  by Model;
run;


data Updated;
set Inventory NewProducts;
  by Model;
run;

proc print data=Updated;
title "The combined dataset of Inventory and Newproducts";
run;
