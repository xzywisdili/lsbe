data Blood;
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
run;

title "Mean WBC and RBC by Blood Type and Gender ";
proc report data=Blood;
  column BloodType Gender,WBC Gender,RBC;
  define BloodType / group 'Blood Type' width=6;
  define Gender / across '-Gender-' width=8;
  define WBC / analysis mean format=comma8.;
  define RBC / analysis mean format=8.2;
run;