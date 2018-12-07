options nofmterr;

data Survey;
  set "F:\D-codes\SAS\Learning\survey.sas7bdat";
run;

ods select Moments;
ods output Moemnts=ProblemMoments;
proc univariate data=Survey;
  var Age Salary;
run;
quit;
ods output close;

ods listing;
title "Moments Dataset";
proc print data = ProblemMoments;
run;