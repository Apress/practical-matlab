%Example4p8
%This code uses fixed point iteration method
format long
tolerans=1e-10;
x0 = 0.5;
f = @(x) x^3-3*x+1;% function comes here
while (abs(f(x0)) > tolerans)
    Result =  (x0 ^ 3 + 1) / 3; %fixed point function
    x0 = Result;
end 
fprintf('Root = f ( %d ) = %d \n',x0,f(x0));
