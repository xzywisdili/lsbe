data Scores;
  infile "F:\D-codes\SAS\Learning\scores_column.txt" missover;
  input Score1 1-2 Score2 3-4 Score3 5-6;
run;

title "Dataset Scores";
proc print data=Scores;
run;