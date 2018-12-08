title "Horizontal Box Plots";
proc sgplot data=Sashelp.Heart;
  hbox Cholesterol / group=Sex;
run;