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

data Sales;
  set "F:\D-codes\SAS\Learning\sales.sas7bdat";
run;

title "Demonstrating the Pctsum Statistic";
proc tabulate data=Sales format=6. noseps;
  class Region;
  var Quantity TotalSales;
  tables Region all, 
         (Quantity TotalSales) * (colpctn) / rts = 15;
  keylabel colpctn = 'Percent of Total';
  label TotalSales = 'Total Sales';
  format Gender $Gender.;
run;