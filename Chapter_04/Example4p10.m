%Example4p10
%This code uses ode45 function
format long
y = 2.0/3.0; %initial condition
x0=0; xF =5;
f = @MyFunc;
xval = [0,5];% 0<=x<=5
[t,Result]=ode45(f,xval,y);
Lengt = length(Result);
fprintf("ode45 Solution of y(5): %.10f\n", Result(Lengt));
y_exact = 5.0 + 1.0 - (1.0/3.0)*exp(5.0);
fprintf("Exact Solution of y(5): %.10f\n",y_exact);
 
function Res = MyFunc(x,y) 
Res = y-x; %defined function
end
