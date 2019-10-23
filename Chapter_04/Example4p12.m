%Example4p12
%This example solves a first order ode
%by using Runge-Kutta Method of 4th order
format long
f = @(x,y) y-x; %defined function
y = 2.0/3.0; %initial condition
xval = linspace(0,5,10001);% 0<=x<=5
h = xval(2)-xval(1); %h is mesh size and it is uniform
for i=1:length(xval)
    K1 = h*f(xval(i),y);
    K2 = h*f(xval(i) + 0.5*h, y + 0.5*K1*h);
    K3 = h*f(xval(i) + 0.5*h, y + 0.5*K2*h);
    K4 = h*f(xval(i) + h, y + K3*h);
    y = y + (1.0/6.0)*(K1 + 2.0*K2 + 2.0*K3 + K4);%RK4
end
fprintf("Numerical Solution of y(5): %.10f\n", y)
y_exact = 5.0 + 1.0 - (1.0/3.0)*exp(5.0);
fprintf("Exact Solution of y(5)    : %.10f\n",y_exact)
