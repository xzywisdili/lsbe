data Blood;
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
run;

title "One-way Frequencies from Blood Data Set";
proc freq data=Blood;
  tables Gender BloodType AgeGroup / nocum nopercent;
run;