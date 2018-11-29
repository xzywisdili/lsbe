data Personal;
  set "F:\D-codes\SAS\Learning\personal.sas7bdat";
  substr(SS, 1, 7) = '*******';
  substr(AcctNum, 5, 1) = '-';
run;

title "Dataset Personal with masked values";
proc print data=Personal noobs;
run;
