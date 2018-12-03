data Blood;
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
run;

title "Subjects in Genser and Age Order";
proc report data=Blood;
  column Gender BloodType Chol;
  define Gender / group width=6;
  define BloodType / group "Blood Type" width=8;
  define Chol / analysis mean "Mean Cholesterol" width=12 format=5.1;
run;