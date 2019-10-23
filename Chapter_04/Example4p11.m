%Example4p11
%This code uses Euler's Method
format long
f = @(x,y) y-x; %defined function
y = 2.0/3.0; %initial condition
xval = linspace(0,5,10001);% 0<=x<=5
h = xval(2)-xval(1); %h is mesh size and it is uniform
for i=1:length(xval)
    y = y + f(xval(i),y)*h; %Euler formula
end
fprintf("Numerical Solution of y(5): %.10f\n", y)
y_exact = 5.0 + 1.0 - (1.0/3.0)*exp(5.0);
fprintf("Exact Solution of y(5)    : %.10f\n",y_exact)
