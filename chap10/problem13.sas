data Demographic;
  set "F:\D-codes\SAS\Learning\demographic.sas7bdat";
run;
proc sort data=Demographic;
  by ID;
run;

data Survey2;
  set "F:\D-codes\SAS\Learning\survey2.sas7bdat";
  ID = input(ID, Z3.);
run;

proc sort data=Survey2;
  by ID;
run;

data Combined;
  merge Demographic Survey2;
  by ID;
run;

title "Combined dataset of Demographic and Survey2";
proc print data=Combined;
run;
