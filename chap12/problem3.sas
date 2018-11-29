data Names_And_More;
  set "F:\D-codes\SAS\Learning\names_and_more.sas7bdat";
  Name = compbl(propcase(Name));
  Phone = compress(Phone, ' ()-.');
run;

title "Dataset Names_And_More";
proc print data=Names_And_More;
run;
