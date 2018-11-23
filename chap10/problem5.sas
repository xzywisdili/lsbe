data Inventory;
  /* change to your file path*/
  set "F:\D-codes\SAS\Learning\inventory.sas7bdat";
run;

data NewProducts;
  /* change to your file path*/
  set "F:\D-codes\SAS\Learning\newproducts.sas7bdat";
run;

data Combined;
set Inventory NewProducts;
run;

proc print data=Combined;
title "The combined dataset of Inventory and Newproducts";
run;
