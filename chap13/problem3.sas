data Nonines;
  set "F:\D-codes\SAS\Learning\nines.sas7bdat";
  array num{*} _numeric_;
  do i = 1 to dim(num);
    if num{i} eq 999 then call missing(num{i});
  end;
  drop i;
run;

title "Dataset Nonines";
proc print data=Nonines noobs;
run;