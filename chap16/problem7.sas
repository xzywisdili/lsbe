OPTIONS nofmterr;

data College;
  set "F:\D-codes\SAS\Learning\college.sas7bdat";
run;

title "Statistics on the College Data Set";
title2 "Broken down by School Size";
proc means data=College noprint chartype
                        n nmiss mean min max maxdec=2;
  class Gender SchoolSize;
  var ClassRank GPA;
  output out = Summary
         n = nmiss = mean = min = max = / autoname;
run;

title "Listing of CLASS_SUMMARY";
data Grand(drop=Gender SchoolSize)
     ByGender(drop=SchoolSize)
     BySize(drop=Gender)
     Cell;
  set Summary;
  drop _freq_;
  if _TYPE_ eq "00" then output Grand;
  if _TYPE_ eq "10" then output ByGender;
  if _TYPE_ eq "01" then output BySize;
  if _TYPE_ eq "11" then output Cell;
run;

title "Listing of Grand";
proc print data=Grand noobs;
run;

title "Listing of ByGender";
proc print data=ByGender noobs;
run;

title "Listing of BySize";
proc print data=BySize noobs;
run;

title "Listing of Cell";
proc print data=Cell noobs;
run;