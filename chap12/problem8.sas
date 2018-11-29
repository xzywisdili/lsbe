data Study;
  set "F:\D-codes\SAS\Learning\study.sas7bdat"(rename=(Weight=WeightUnits));
  Weight = input(compress(WeightUnits, , 'kd'), 8.);
  if find(WeightUnits, 'lb', 'i') then Weight = round(Weight, 10);
  else if find(WeightUnits, 'kg', 'i') then Weight = round(Weight * 2.2, 10);
  drop WeightUnits;
run;

title "Dataset Study";
proc print data=Study noobs;
run;
