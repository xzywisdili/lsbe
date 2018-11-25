data Miss_Blood;
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
  if missing(WBC) then call missing(Gender, RBC, Chol);
run;

title "Miss_Blood Dataset";
proc print data=Miss_Blood;
run;
