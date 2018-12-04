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

title "Descriptive Statistics";
proc tabulate data=College format=6.;
  class Gender;
  var GPA ClassRank;
  tables (GPA ClassRank) * (n mean*f=4.1), 
         Gender all / rts = 15;
  keylabel n = ' '
           all = 'Total'
		   n = 'Number'
		   mean = 'Average';
  label ClassRank = 'Class Rank';
  format Gender $gender.;
run;