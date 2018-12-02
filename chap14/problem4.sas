data Blood;
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
run;

title "First 5 observations in Blood Data Set";
proc print data=Blood(obs=5) noobs;
  var Subject Gender BloodType;
run;