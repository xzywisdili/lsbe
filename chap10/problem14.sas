data Inventory;
  set "F:\D-codes\SAS\Learning\inventory.sas7bdat";
run;

data NewPrices;
  input Model $ Price; 
  datalines;
M567 25.95
X999 35.99
;

proc sort data=Inventory;
  by Model;
run;

proc sort data=NewPrices;
  by Model;
run;

data UpdatedPrices;
  update Inventory NewPrices;
  by Model;
run;

proc print data=UpdatedPrices;
run; 
