data Random;
  do i=1 to 1000;
    Num = int(ranuni(0)*5+1);
	output;
  end;
run;

proc freq data=Random;
tables Num;
run;
