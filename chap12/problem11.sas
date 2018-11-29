data Errors;
  set "F:\D-codes\SAS\Learning\errors.sas7bdat";
run;

title "Dataset Errors";
proc print data=Errors noobs;
  where anydigit(Name);
  var Subj Name;
run;
