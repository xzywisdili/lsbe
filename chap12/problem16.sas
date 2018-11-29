data Names;
  set "F:\D-codes\SAS\Learning\names_and_more.sas7bdat";
  length Name $ 15;
  Name = compbl(Name);
  Last = scan(Name, 2, ' ');
run;

proc sort data=Names;
by Last;
run;

title "Dataset Names";
proc print data=Names noobs;
  id Name;
  var Phone Height Mixed;
run;
