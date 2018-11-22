data Mountain_USA Road_France;
  /* change to your file path */
  set "F:\D-codes\SAS\Learning\bicycles.sas7bdat";
  if Country eq 'USA' and Model eq 'Mountain Bike' then output Mountain_USA;
  if Country eq 'France' and Model eq 'Road Bike' then output Road_France;
run;

proc print data=Mountain_USA;
title 'Mountain bikes in USA';
run;

proc print data=Road_France;
title 'Road bikes in France';
run;

