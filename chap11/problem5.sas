data Evaluate;
  set "F:\D-codes\SAS\Learning\psych.sas7bdat";
  ScoreAve = mean(largest(1, of Score1-Score5),
	              largest(2, of Score1-Score5),
			      largest(3, of Score1-Score5));
  if n(of Ques1-Ques10) ge 7 then QuesAve = mean(of Ques1-Ques10);
  Composit = ScoreAve + 10 * QuesAve;
  keep ID ScoreAve QuesAve Composit;
run;

title "Evaluate Dataset";
proc print data=Evaluate;
run;
