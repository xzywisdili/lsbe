OPTIONS nofmterr;

data College;
  set "F:\D-codes\SAS\Learning\college.sas7bdat";
run;

title "Statistics on the College Data Set";
title2 "Broken down by School Size";
proc means data=College noprint n mean median maxdec=2;
  class SchoolSize;
  var ClassRank GPA;
  output out = Class_Summary
         n = mean = median = / autoname;
run;

title "Listing of CLASS_SUMMARY";
proc print data=Class_Summary;
run;