options nofmterr;

ods html path = "F:\D-codes\SAS\lsbe\chap19"
         file = "problem4.rtf";

data Survey;
  set "F:\D-codes\SAS\Learning\survey.sas7bdat";
run;

title "Sending Output to a RTF File";
proc print data=Survey noobs;
run;

ods html close;
