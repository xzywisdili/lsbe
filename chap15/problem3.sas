data Hosp;
  set "F:\D-codes\SAS\Learning\hosp.sas7bdat";
run;

title "Demonstrating a Compute Block";
proc report data=Hosp(obs=5);
  column Subject AdmitDate DOB Age;
  define Subject / display width=7;
  define AdmitDate / display "Admission Date" width=10;
  define DOB / display;
  define Age / computed "Age at Admission" width=3 format=2.;

  compute Age;
    Age = yrdif(DOB, AdmitDate, 'actual');
  endcomp;
run; 