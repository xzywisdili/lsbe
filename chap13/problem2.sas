data Survey2;
  set "F:\D-codes\SAS\Learning\survey2.sas7bdat";
  array Q{5};
  do i = 1 to 5;
     Q{i} = 6 - Q{i};
  end;
  drop i;
run;

title "Dataset Survey2";
proc print data=Survey2 noobs;
run;