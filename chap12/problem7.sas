/*The first solution without using any cat functions.*/
data Study;
  set "F:\D-codes\SAS\Learning\study.sas7bdat";
  length Combined $ 3;
  Combined = trim(Group) || '-' || put(Subgroup, 1.);
run;

/*The second solution using catx function.*/
data Study;
  set "F:\D-codes\SAS\Learning\study.sas7bdat";
  length Combined $ 3;
  Combined = catx('-', Group, Subgroup);
run;

title "Dataset Study";
proc print data=Study noobs;
run;
