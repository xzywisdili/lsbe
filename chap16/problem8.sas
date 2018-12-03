proc means data=sashelp.cars printalltypes 
                             n nmiss mean std
                             maxdec=1;
  class Make Origin;
  var Horsepower;
run;