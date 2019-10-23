%Example4p1
%This code uses interp1 function
x=[1, 2, 5, 8];
y=[20, 30, 50, 80];
ValX1 = interp1(x,y,7);
ValX2 = interp1(x,y,10,"linear");
ValX3 = interp1(x,y,10,"spline");
fprintf("1st value is %f\n",ValX1)
fprintf("2nd value is %f\n",ValX2)
fprintf("3rd value is %f\n",ValX3)