%Example4p5
%This code uses Newton's algorithm
format long
tolerans=1e-10;
x0 = 0.5;
F = @(x) x^3-3*x+1; %Function written here
Derivat = @(x) 3*x^2-3; % Its derivative should be here
%Make sure Derivat(x0) is NOT equal to zero
x0 = MyNewton (F,Derivat ,x0 ,tolerans);
fprintf('Root = f ( %d ) = %d \n',x0,F(x0));

function x0 = MyNewton (F,Derivat ,x0 ,tolerans)
while (abs(F(x0)) > tolerans)
    Result = x0 - (F(x0) / Derivat (x0));
    x0=Result;
end
end