data BloodPressure;
  set "F:\D-codes\SAS\Learning\bloodpressure.sas7bdat";
run;

title "Subjects in Genser and Age Order";
proc report data=BloodPressure;
  column Gender Age SBP DBP;
  define Gender / group width=6;
  define Age / order width=3;
  define SBP / display "Systolic Blood Pressure" width=11;
  define DBP / display "Diastolic Blood Pressure" width=11;
run;