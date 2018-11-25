data Fake;
  length Gender $6;
  do Subj=1 to 100;
	if ranuni(0) le .4 then Gender='Female';
	else Gender='Male';
	Age = int(ranuni(0)*50+10);
	output;
  end;
run;

title 'Frequencies of Gender in Fake Dataset';
proc freq data=fake;
  tables Gender / nocum;
run;

title "First 10 Observations of Fake Dataset";
proc print data=fake(obs=10);
run;
