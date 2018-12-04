data Blood;
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
run;

title "Frequency from Blood Dataset in Frequency Order";
proc freq data=Blood order=freq;
  tables BloodType; 
run;
