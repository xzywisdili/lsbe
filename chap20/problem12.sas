title "Demonstrating Transparency and Bar Width";
proc sgplot data=Sashelp.Heart;
  vbar Sex / Response=Height stat=Mean;
  vbar Sex / Response=Weight stat=Mean 
             barwidth=.25 transparency=.2;
run;