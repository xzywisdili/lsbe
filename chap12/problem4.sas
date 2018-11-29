data Names_And_More;
  set "F:\D-codes\SAS\Learning\names_and_more.sas7bdat";
  Height = compress(Height, 'inft.', 'i');
  Feet = input(scan(Height, 1, ' '), 8.);
  Inches = input(scan(Height, 2, ' '), 8.);
  if not missing(Inches) then 
    Height = Feet * 12 + Inches;
  else Height = Feet * 12;
  drop Feet Inches;
run;

title "Dataset Names_And_More";
proc print data=Names_And_More;
run;
