data Subset_A Subset_B;
  /* change to your file path*/
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
  Combined = .001 * WBC +RBC;
  if Gender eq 'Female' and BloodType eq 'AB' then output Subset_A;
  if Gender eq 'Female' and BloodType eq 'AB' and COmbined ge 14 then output Subset_A;
run;

proc print data=Subset_A;
title 'Subset_A';
run;

proc print data=Subset_B;
title 'Subset_B';
run;

