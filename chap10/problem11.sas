options mergenoby=nowarn;
data try1;
  merge Inventory Purchase;
run;

title "Listing of TRY1";
proc print data=try1;
run;

options mergenoby=warn;
data try2;
  merge inventory purchase;
run;

title "Listing of TRY2";
proc print data=try2;
run;

options mergenoby=error;
data try3;
  merge inventory purchase;
run;
