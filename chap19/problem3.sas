options nofmterr;

ods listing close;
ods html path = "F:\D-codes\SAS\lsbe\chap19"
         file = "problem3.html"
         style = Journal;

data College;
  set "F:\D-codes\SAS\Learning\college.sas7bdat";
run;

title "Sending Ouput to an HTML File with a New Style";
proc print data=College(obs=8) noobs;
run;

proc means data=College n mean maxdec=2;
  var GPA ClassRank;
run;

ods html close;
ods listing;