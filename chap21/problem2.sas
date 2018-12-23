data Scores;
  infile "F:\D-codes\SAS\Learning\scores_comma.csv" delimiter=',' dsd;
  input Score1-Score3;
run;

title "Dataset Scores";
proc print data=Scores;
run;