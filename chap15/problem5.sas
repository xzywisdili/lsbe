data BloodPressure;
  set "F:\D-codes\SAS\Learning\bloodpressure.sas7bdat";
run;

title "Patient Age Groups";
proc report data=BloodPressure;
  column Gender Age AgeGroup;
  define Gender / display width=3;
  define Age / display width=5;
  define AgeGroup / computed "Age Group" width=13;

  compute AgeGroup / character length=5;
    if Age le 50 then AgeGroup="<= 50";
	else if not missing(Age) then AgeGroup="> 50";
  endcomp;
run;