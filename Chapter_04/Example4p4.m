%Example4p4
%This code uses bisiection algorithm
format long
tolerance=1e-10;
a = 0.0; b = 1.0;
f=@(x) x^3-3*x+1;% function is defined here
Result = MyBisect (f,a,b,tolerance);
fprintf('Root is = f ( %d ) = %d \n',Result,f(Result));
function [c] = MyBisect (f,a,b,tolerance)
c = (a + b)/2;
while (abs(f(c)) > tolerance)
    c = (a + b)/2;
    if ( f(a)*f(c) < 0 )
       b = c;
    else
       a = c;
    end
end
end
