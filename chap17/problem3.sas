data Blood;
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
run;

proc format;
  value cholgroup low-200 = "normal"
                 201-high = "high"
                 . = "missing";
run;
 
title "Demonstrating the MISSING Option";
title2 "WIghout Missing Option";
proc freq data=Blood;
  tables Chol / nocum;
  format Chol agegroup.;
run;

title "Demonstrating the MISSING Option";
title2 "WIghout Missing Option";
proc freq data=Blood;
  tables Chol / nocum missing;
  format Chol agegroup.;
run;