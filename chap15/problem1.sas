data Blood;
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
run;

title "First 5 Observations from Blood Data Set";
proc report data=Blood(obs=5);
  column Subject WBC RBC;
  define Subject / display "Subject Number" width=7;
  define WBC / display "White Blood Cells" width=6 format=comma6.0;
  define RBC / display "Red Blood Cells" width=5 format=5.2;
run;