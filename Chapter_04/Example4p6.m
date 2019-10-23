%Example4p6
%This code uses Secant's algorithm
format long
tolerance=1e-10;
x0 = 0.0;
x1 = 1.0;
f = @(x) x^3-3*x+1; % function comes here
x1 = MySecant (f,x0,x1 ,tolerance);
fprintf('Root = f ( %d ) = %d \n',x1,f(x1));

function x1 = MySecant (f,x0,x1 ,tolerance)
while (abs(f(x1)) > tolerance)
    Result = x1 - ( (x1 - x0) / (f(x1)-f(x0)) ) * f(x1);
    x0 = x1;
    x1 = Result;
end
end
