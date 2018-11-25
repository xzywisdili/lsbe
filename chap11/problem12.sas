data difference;
  set "F:\D-codes\SAS\Learning\stocks.sas7bdat";
  Diff = dif(Price);
run;

goptions reset=all colors=(black) ftext=swiss htitle=1.5;
symbol1 v=dot i=smooth;
title "Plot of Daily Price Difference";

proc gplot data=difference;
  plot Diff*Date;
run;
quit;
