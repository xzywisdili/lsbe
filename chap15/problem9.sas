data temp_Survey;
  set Learning.Survey;
  length AgeGroup $ 20;
  if Gender eq 'M' then Gender='Male';
  else Gender='Female';
  
  if Age lt 30 then AgeGroup='Less than 30';
  else if Age le 50 then AgeGroup='30 to 50';
  else if not missing(Age) then AgeGroup='51+';
run;

title "Report on the Survey Data Set";
proc report data=temp_Survey;
  column ID AgeGroup Gender Salary Ques1-Ques5 AveResponse;
  define ID / display "Subject ID" width=4;
  define AgeGroup / "Age as of 1/1/2006" width=7;
  define Gender / display width=6;
  define Salary / display "Yearly Salary" width=6 format=dollar10.;
  define Ques1 / display noprint;
  define Ques2 / display noprint;
  define Ques3 / display noprint;
  define Ques4 / display noprint;
  define Ques5 / display noprint;
  define AveResponse / computed "Average Response" width=6 format=3.1;
  
  compute AveResponse;
    AveResponse = mean(of Ques1-Ques5);
  endcomp;
run;