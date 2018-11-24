data Health;
  set "F:\D-codes\SAS\Learning\health.sas7bdat";
  BMI = (weight/2.2) / (Height*.0254)**2;
  BMIround = round(BMI);
  BMITenth = round(BMI, .1);
  BMIGroup = round(BMI, 5);
  BMITrunc = int(BMI);
run;

title "Health dataset with BMI computed";
proc print data=Health noobs;
run;
