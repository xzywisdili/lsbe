data Hosp;
  set "F:\D-codes\SAS\Learning\hosp.sas7bdat";
run;

title1 "Selected Patients from Hosp Data Set";
title2 "Admitted in September of 2004";
title3 "Older than 83 years of age";
title4 "--------------------------";

proc print data=Hosp label n="Number of Patients = " double;
  where Year(AdmitDate) eq 2004 and 
        Month(AdmitDate) eq 9 and
        yrdif(DOB, AdmitDate, 'Actual') ge 83;
  id Subject;
  var DOB AdmitDate DischrDate; 
  label AdmitDate = "Admission Date"
        DischrDate = "Discharge Date"
		DOB = "Date of Birth";
run;