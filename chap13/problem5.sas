data Passing;
  input ID $ 3. Test1-Test5;
  array Test{*} Test1-Test5;
  array PassScore{5} _temporary_ (65, 70, 60, 62, 68);
  Count = 0;
  do i = 1 to 5;
    Count + (Test{i} ge PassScore{i});
  end;
  drop i;
datalines;
001 90 88 92 95 90
002 64 64 77 72 71
003 68 69 80 75 70
004 88 77 66 77 67
;
run;

title "Dataset Passing";
proc print data=Passing noobs;
run;