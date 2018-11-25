data Convert;
  set "F:\D-codes\SAS\Learning\char_num.sas7bdat"(rename=
                                                  (Age = Char_Age
                                                   Weight = Char_Weight
                                                   Zip = Num_Zip
                                                   SS = Num_SS));
  Age = input(Char_Age, 8.);
  Weight = input(Char_Weight, 8.);
  SS = put(Num_SS, ssn11.);
  Zip = put(Num_Zip, Z5.);
  drop Char_: Num_:;
run;

title "Convert Dataset";
proc print data=Convert;
run;
