data Medical;
  set "F:\D-codes\SAS\Learning\medical.sas7bdat";
  where findw(Comment, 'antibiotics');
run;

title "Dataset Medical";
proc print data=Medical;
run;
