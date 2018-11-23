data Demographic;
  set "F:\D-codes\SAS\Learning\demographic.sas7bdat";
run;
proc sort data=Demographic;
  by ID;
run;

data Survey1;
  set "F:\D-codes\SAS\Learning\survey1.sas7bdat";
run;
proc sort data=Survey1;
  by Subj;
run;

data Combined;
  merge Demographic Survey1(rename=(Subj=ID));
  by ID;
run;

title "Combined dataset of Demographic and Survey1";
proc print data=Combined;
run;
