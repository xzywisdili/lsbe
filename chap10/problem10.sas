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

data Not_Purchased;
  merge Inventory(in = InInventory)
        Purchase(in = InPurchase);
  by Model;
  if InInventory and not InPurchase;
  keep Model Price;
run;

proc print data=Not_Purchased;
  title "The items which are not purchased";
run;
