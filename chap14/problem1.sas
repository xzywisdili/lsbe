data Blood;
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
run;

title "First 10 Observations in Dataset Blood";
proc print data=Blood(firstobs=10) label;
  id Subject;
  var WBC RBC Chol;
  label WBC = "White Blood Cells"
        RBC = "Red Blood Cells"
		Chol = "Cholesterol";
run;