title "Mean Cholesterol by Sex";
proc sgplot data = Sashelp.Heart;
  vbar Sex / Response=Cholesterol stat=mean;
run;