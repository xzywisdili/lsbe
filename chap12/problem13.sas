data Exact Within25;
  set "F:\D-codes\SAS\Learning\social.sas7bdat";
  if SS1 eq SS2 then output Exact;
  else if spedis(SS1, SS2) le 25 then output Within25;
run;

title "Dataset Exact";
proc print data=Exact;
run;

title "Dataset Within25";
proc print data=Within25;
run;
