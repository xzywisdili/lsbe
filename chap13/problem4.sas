data Survey2;
  set "F:\D-codes\SAS\Learning\survey2.sas7bdat";
  array Ques{*} Q1-Q5;
  length Any5 $ 3;
  Any5 = 'No';
  do i = 1 to 5;
     if Ques{i} = 5 then do;
	   Any5 = 'Yes';
	   leave;
	 end;
  end;
  drop i;
run;

title "Dataset Survey2";
proc print data=Survey2 noobs;
run;