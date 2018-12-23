data Scores;
  infile "F:\D-codes\SAS\Learning\test_scores.txt" missover;
  input Score1-Score3;
run;

title "Dataset Scores";
proc print data=Scores;
run;