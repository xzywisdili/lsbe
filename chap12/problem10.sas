data Check1;
  set "F:\D-codes\SAS\Learning\errors.sas7bdat";
  where notdigit(trim(Subj)) or verify(trim(PartNumber), '0123456789LS');
run;

title "Dataset Check1";
proc print data=Check1 noobs;
run;
