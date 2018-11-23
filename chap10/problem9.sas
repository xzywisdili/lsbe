data Inventory;
  /* change to your file path*/
  set "F:\D-codes\SAS\Learning\inventory.sas7bdat";
run;

proc sort data=Inventory;
  by Model;
run;

data Purchase;
  /* change to your file path*/
  set "F:\D-codes\SAS\Learning\purchase.sas7bdat";
run;

proc sort data=Purchase;
  by Model;
run;

data Pur_Price;
  merge Inventory Purchase(in = InPurchase);
  by Model;
  if InPurchase;
  TotalCost = Price * Quantity;
  format TotalCost dollar8.2;
run;

proc print data=Pur_Price;
  title "Combined dataset of Inventory and Purchase";
run;
