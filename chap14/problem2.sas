data Sales;
  set "F:\D-codes\SAS\Learning\sales.sas7bdat";
run;

proc sort data=Sales;
  by Region;
run;

title "Sales Figures from the Sales Data Set";
proc print data=Sales noobs;
  by Region;
  id Region;
  var Quantity TotalSales;
  sum Quantity TotalSales;
run;