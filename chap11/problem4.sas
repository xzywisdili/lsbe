data Evaluate;
  set "F:\D-codes\SAS\Learning\psych.sas7bdat";
  if n(of Ques1-Ques10) ge 7 then QuesAve = mean(of Ques1-Ques10);
  if n(of Score1-Score5) eq 5 then do
    MinScore = min(of Score1-Score5);
	MaxScore = max(of Score1-Score5);
	SecondHighest = largest(2, of Score1-Score5);
  end;
run;

title "Evaluate Dataset";
proc print data=Evaluate;
run;
