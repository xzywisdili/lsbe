OPTIONS nofmterr;

proc format;
  value rank
    0-50 = 'bottom half'
    51-74 = '3rd quartile'
    75-100 = 'top quarter';
run;

data College;
  set "F:\D-codes\SAS\Learning\college.sas7bdat";
run;


title "Statistics on the College Data Set";
title2 "Broken down by School Size";
proc means data=College n mean maxdec=2;
  class ClassRank;
  var GPA;
  format ClassRank rank.;
run;