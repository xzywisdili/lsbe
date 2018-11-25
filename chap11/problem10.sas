data Convert;
  set "F:\D-codes\SAS\Learning\char_num.sas7bdat";
  NumAge = input(Age, 8.);
  NumWeight = input(Weight, 8.);
  CharSS = put(SS, ssn11.);
  CharZip = put(Zip, Z5.);
  drop Age Weight SS ZIP;
run;

title "Convert Dataset";
proc print data=Convert;
run;
