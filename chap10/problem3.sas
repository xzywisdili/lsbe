data Lowmale Lowfemale;
  /* change to your file path*/
  set "F:\D-codes\SAS\Learning\blood.sas7bdat";
  where Chol lt 100;
  if Gender eq 'Male' then output Lowmale;
  if Gender eq 'Female' then output Lowfemale;
run;

proc print data=Lowmale;
title 'The male whose Chol level is low';
run;

proc print data=Lowfemale;
title 'The female whose Chol level is low';
run;

