data Spirited;
  set "F:\D-codes\SAS\Learning\sales.sas7bdat";
  where find(Customer, 'spirit', 'i');
run;

title "Dataset Spirited";
proc print data=Spirited noobs;
run;
