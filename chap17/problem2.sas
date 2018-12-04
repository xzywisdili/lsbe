data BloodPressure;
  set "F:\D-codes\SAS\Learning\bloodpressure.sas7bdat";
run;

proc format;
  value agegroup low-40 = "40 and younger"
                 41-60 = "41 to 60"
                 61-high = "61 and older";
run;
 
title "Frequencies from BloodPressure Data Set Using Format Groups";
proc freq data=BloodPressure;
  tables Age / nocum nopercent;
  format Age agegroup.;
run;