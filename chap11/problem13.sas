data smooth;
  set "F:\D-codes\SAS\Learning\stocks.sas7bdat";
  Price1 = lag(Price);
  Price2 = lag2(Price);
  Average = mean(Price, Price1, Price2);
run;

goptions reset=all colors=(black) ftext=swiss htitle=1.5;
symbol1 v=dot i=smooth;
symbol2 v=square line=2 i=smooth;
title "Plot of Price and Moving Average";

proc gplot data=smooth;
  plot Price*Date
       Average*Date / overlay;
run;
quit;
