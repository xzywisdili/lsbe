data gym;
  /* change to your file path*/
  set "F:\D-codes\SAS\Learning\gym.sas7bdat";
run;

proc means data=gym  noprint;
  var Fee;
  output out = means(keep=AvePercent)
         mean = AvePercent;
run;

data Percent;
  set gym;
  if _n_ = 1 then set means;
  CostPercent = Fee / AvePercent;
  format CostPercent percent8.;
run;

proc print data=Percent;
  title "gym with new variable CostPercent";
run;
