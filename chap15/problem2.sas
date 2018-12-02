data Blood;
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
run;

title "Statistics from BLOOD by Gender";
proc report data=Blood;
  column Gender WBC RBC;
  define Gender / group width=7;
  define WBC / analysis mean "Average WBC" width=6 format=comma6.0;
  define RBC / analysis mean "Average Weight" width=5 format=5.2;
  rbreak after / summarize;
run;