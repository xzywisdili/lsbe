title "Scatter Plot of Weight by Height";
/*There is no Health dataset in Sashelp library. 
The dataset name should be Heart.*/
proc sgplot data = Sashelp.Heart;
  scatter x=Height y=Weight;
run;