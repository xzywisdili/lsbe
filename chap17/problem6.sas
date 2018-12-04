options nofmterr;

data College;
  set "F:\D-codes\SAS\Learning\college.sas7bdat";
run;

title "Three-way Frequencies from College Dataset";
proc freq data=College;
  tables Gender * Scholarship * ClassRank;
run;
