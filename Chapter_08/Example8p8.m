%Example8p8
%This code solves Lotka-Volterra equations
y0 = [100;10];%initial populations
[t,x] = ode45(@LVfunc,[0 50],y0);
A = x(:,1);%Prey
B = x(:,2);%Predator
figure('Name','Predator-Prey Model',...
    'NumberTitle','off','MenuBar', 'none');
semilogx(t,A,'-o',t,B,'r-');grid on;
legend('Preys','Predators');
title('Population Along With Time')
xlabel('Time');ylabel('Population'); 
function dxdt = LVfunc(t,x)
gama = 0.4; alpha = 0.4; 
delta = 2.0; beta = 0.1;dxdt=[0;0];
dxdt(1)=gama*x(1)-alpha*x(1)*x(2);%prey
dxdt(2)=-delta*x(2)+beta*x(1)*x(2);%predators
end