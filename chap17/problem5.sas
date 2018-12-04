options nofmterr;

data College;
  set "F:\D-codes\SAS\Learning\college.sas7bdat";
run;

proc format;
  value classgroup low-70 = "70 and lower"
                   71-high = "71 and higher";
run;

title "Scholarship by Class Rank";
proc freq data=College;
  tables Scholarship * ClassRank;
  format ClassRank classgroup.;
run;
