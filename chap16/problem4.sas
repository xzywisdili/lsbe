OPTIONS nofmterr;

proc format;
  value $GroupSize
    'S', 'M' = 'Small and Medium'
	'L' = 'Large';
run;

data College;
  set "F:\D-codes\SAS\Learning\college.sas7bdat";
run;

title "Statistics on the College Data Set";
title2 "Broken down by School Size";
proc means data=College mean median 
                        min max n nmiss
                        maxdec=2;
  class SchoolSize;
  var ClassRank GPA;
  format SchoolSize $GroupSize.;
run;