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
run;

data College;
  set "F:\D-codes\SAS\Learning\college.sas7bdat";
run;

title "Demographics from COLLEGE Data Set";
proc tabulate data=College;
  class Gender Scholarship SchoolSize;
  table (Gender Scholarship all), SchoolSize / rts = 15;
  keylabel n = ' ';
run;