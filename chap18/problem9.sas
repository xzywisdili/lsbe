proc format;
  value $Yesno 'Y', '1' = 'Yes'
               'N', '0' = 'No'
			   ' ' = 'Not Given';
  value $Size 'S' = 'Small'
              'M' = 'Medium'
			  'L' = 'Large'
			  ' ' = 'Missing';
  value $Gender 'F' = 'Female'
                'M' = 'Male'
				' ' = 'Not Given';
  value Rank low-70 = 'Low to 70'
             71-high = '71 and higher';
run;

data College;
  set "F:\D-codes\SAS\Learning\college.sas7bdat";
run;

proc sort data=College;
  by descending Scholarship;
run;

title "More Column Percents";
proc tabulate data=College order=data format=6. noseps;
  class Gender Scholarship;
  tables Gender all, 
         (Scholarship all)*(colpctn) / rts = 15;
  keylabel all = 'Total'
           colpctn = 'Percent';
  format Gender $Gender.;
run;