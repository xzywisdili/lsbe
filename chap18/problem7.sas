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

title "More Descriptive Statistics";
proc tabulate data=College format=6.;
  class SchoolSize;
  var GPA ClassRank;
  tables SchoolSize all, 
         (GPA ClassRank) * (median*f=4.1 min*f=4.1 max*f=4.1) / rts = 15;
  keylabel all = 'Total'
		   median = 'Median'
		   min = 'Minimum'
           max = 'Maximum';
  label ClassRank = 'Class Rank'
        SchoolSize = 'School Size';
run;