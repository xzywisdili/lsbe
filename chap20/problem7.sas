title "Demonstrating PBSPLINE Smoothing";
proc sgplot data=Sashelp.Heart(obs=100);
  pbspline x=Height y=Weight;
run;