title "Mean Height by Sex";
proc sgplot data = Sashelp.Heart;
  hbar Sex / response=Height stat=mean barwidth=.25 nofill;
run;