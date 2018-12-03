OPTIONS nofmterr;

data College;
  set "F:\D-codes\SAS\Learning\college.sas7bdat";
run;

proc sort data=College;
  by Gender SchoolSize;
run;

title "Statistics on the College Data Set";
proc means data=College mean median 
                        min max n nmiss
                        maxdec=2;
  by Gender SchoolSize;
  var ClassRank GPA;
run;