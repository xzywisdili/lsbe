data Names_And_More;
  set "F:\D-codes\SAS\Learning\names_and_more.sas7bdat";
  Integer = input(scan(Mixed, 1, ' /'), 8.);
  Numerator = input(scan(Mixed, 2, ' /'), 8.);
  Denominator = input(scan(Mixed, 3, ' /'), 8.);
  if not missing(Numerator) then 
    Price = round(Integer + Numerator / Denominator, .001);
  else Price = round(Integer, .001);
  drop Integer Numerator Denominator;
run;

title "Dataset Names_And_More";
proc print data=Names_And_More noobs;
run;
