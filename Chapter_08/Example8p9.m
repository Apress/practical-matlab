%Example8p9
%Lotka-Volterra eqns with 3 species
clear all;close all;
y0 = [100;100;100];%initial populations
[t,x] = ode45(@LVfunc2,[0 60],y0);
A = x(:,1);%Prey
B = x(:,2);%Predator
C = x(:,3);%3rd Organism
figure('Name','Predator-Prey Model',...
    'NumberTitle','off','MenuBar', 'none');
plot(t,A,'-o',t,B,'r-',t,C,'gx');grid on;
%semilogx(t,A,'-o',t,B,'r-',t,C,'gx');grid on;
legend('Preys','Predators','3rd organism');
title('Population Along With Time')
xlabel('Time');ylabel('Population'); 
