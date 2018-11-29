data Mixed;
  set "F:\D-codes\SAS\Learning\mixed.sas7bdat";
  NameLow = lowcase(Name);
  NameProp = propcase(Name);

  First = lowcase(scan(Name, 1, ' '));
  Last = lowcase(scan(Name, 2, ' '));
  substr(First, 1, 1) = upcase(substr(First, 1, 1));
  substr(Last, 1, 1) = upcase(substr(Last, 1, 1));
  NameHard = catx(' ', First, Last);
run;

title "Mixed Dataset";
proc print data=Mixed;
run;
