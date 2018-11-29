data Names_And_More;
  set "F:\D-codes\SAS\Learning\names_and_more.sas7bdat";
  length AreaCode $ 3;
  AreaCode = substr(Phone, 2, 3);
  keep Phone AreaCode;
run;

title "Dataset Names and More";
proc print data=Names_And_More noobs;
run;
