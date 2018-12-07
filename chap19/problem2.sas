options nofmterr;

ods listing close;
ods html path = "F:\D-codes\SAS\lsbe\chap19"
         contents = 'Contents_problem2.html' 
         frame ='Frame_problem2.html'
         body = 'Body_problem2.html';

data College;
  set "F:\D-codes\SAS\Learning\college.sas7bdat";
run;

title "Using ODS to Create a Table of Contents";
proc print data=College(obs=8) noobs;
run;

proc means data=College n mean maxdec=2;
  var GPA ClassRank;
run;

ods html close;
ods listing;