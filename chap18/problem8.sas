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

title "Demonstrating Row Percents";
proc tabulate data=College format=6. noseps;
  class Gender Scholarship;
  tables Gender all, 
         (Scholarship all)*(rowpctn) / rts = 15;
  keylabel rowpctn = 'Percent';
  format Gender $Gender.;
run;