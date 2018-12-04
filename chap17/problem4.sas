/*I can't find the dataset Voter in the example data.*/
data Voter;
  set "F:\D-codes\SAS\Learning\voter.sas7bdat";
run;

proc freq data=Voter;
  tables Party * (Ques1-Ques4);
run;