data _NULL_;
  x = 10;
  y = 20;
  z = -30;
  AbsZ = abs(z);
  Expx = round(exp(x), .001);
  Circumference = round(2*constant('pi')*y, .001);
  put _all_;
run;
