data BloodPressure;
  set "F:\D-codes\SAS\Learning\bloodpressure.sas7bdat";
run;

title "Hypertensive Patients";
proc report data=BloodPressure;
  column Gender SBP DBP Hyper;
  define Gender / display width=3;
  define SBP / display width=5;
  define DBP / display width=5;
  define Hyper / computed "Hypertensive?" width=13;

  compute Hyper / character length=3;
    if Gender eq 'M' then do;
	  if SBP gt 140 or DBP gt 90 then Hyper='Yes';
	  else Hyper="No";
	end;
	if Gender eq 'F' then do;
	  if SBP gt 138 or DBP gt 88 then Hyper='Yes';
	  else Hyper="No";
	end;
  endcomp;
run;