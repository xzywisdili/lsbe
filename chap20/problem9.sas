title "Histogram for Cholesterol";
proc sgplot data=Sashelp.Heart;
  histogram Cholesterol;
run;