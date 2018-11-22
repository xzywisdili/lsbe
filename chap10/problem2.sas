data Monday2002;
  /* change this line to your datafile path*/
  set "F:\D-codes\SAS\Learning\hosp.sas7bdat";
  where year(AdmitDate) eq 2002 and weekday(AdmitDate) eq 2;
  Age = round(yrdif(DOB, AdmitDate, 'Actual'));
run;

proc print data=Monday2002;
title "Listing of Monday 2002";
run;
