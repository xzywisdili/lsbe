title "Demonstrating LOESS Smoothing";
proc sgplot data=Sashelp.Heart(obs=100);
  loess x=Height y=Weight;
run;