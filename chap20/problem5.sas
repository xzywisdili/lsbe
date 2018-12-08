title "Scatter Plot with Regression Line and Confidence Limits";
proc sgplot data = Sashelp.Heart;
  reg x=Height y=Weight / CLM CLI;
run;