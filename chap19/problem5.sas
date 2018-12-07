options nofmterr;

data Survey;
  set "F:\D-codes\SAS\Learning\survey.sas7bdat";
run;

ods trace on;

proc univariate data=Survey;
  var Age Salary;
run;
ods trace off;

ods select quantiles;
proc univariate data=Survey;
  var Age Salary;
run;

