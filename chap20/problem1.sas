title "Bar Chart for the Variable Status";
proc sgplot data = Sashelp.Heart;
  vbar Status;
run;