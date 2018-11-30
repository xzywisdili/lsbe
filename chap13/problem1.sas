data Survey1;
  set "F:\D-codes\SAS\Learning\survey1.sas7bdat";
  array Q{5};
  do i = 1 to 5;
    Q{i} = translate(Q{i}, '54321', '12345');
  end;
  drop i;
run;

title "Dataset Survey1";
proc print data=Survey1 noobs;
run;