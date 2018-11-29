/*The first way which use catx function.*/
/*data Study;*/
/*  set "F:\D-codes\SAS\Learning\study.sas7bdat";*/
/*  length GroupDose $ 6;*/
/*  GroupDose = catx('-', Group, Dose);*/
/*run;*/

/*The second way without using any cat function.*/
data Study;
  set "F:\D-codes\SAS\Learning\study.sas7bdat";
  length GroupDose $ 6;
  GroupDose = trim(Group) || '-' || Dose;
run;

title "Dataset Study";
proc print data=Study;
run;

proc contents data=Study;
run;
