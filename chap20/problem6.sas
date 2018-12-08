data Retail_With_Date;
  /* No Sales dataset in SASHelp. 
  The name should be Retail.*/
  set Sashelp.Retail(drop=Date);
  Date = MDY(Month, Day, Year);
  format Date yymmdd10.;
run;

proc sgplot data=Retail_With_Date;
  series x=Date y=Sales;
run;