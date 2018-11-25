data Blood;
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
  if missing(WBC) then Missing_WBC +1;
  if missing(RBC) then Missing_RBC +1;
  if missing(Chol) then Missing_Chol +1;
run;

title "Blood dataset with the counter of missing value";
proc print data=Blood;
run;
