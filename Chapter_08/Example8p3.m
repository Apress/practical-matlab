%Example8p3
%This code solves Nicholson-Bailey Model
clear all;close all;
e=1; a=0.069; r=2; 
Ngens=25;  %number of generations
time=1:1:Ngens;
H=zeros(1,Ngens); P=zeros(1,Ngens);
P(1)=10; H(1)=22;%initial conditions 
for t=1:Ngens-1   
    H(t+1)=r*H(t)*exp(- a*P(t));
    P(t+1)=e*H(t)*(1-exp(-a*P(t)));
end 
plot(time,H,'r',time,P,'b');
legend('Host','Parasitoid');
xlabel('Generation t');ylabel('Population');
title('Nicholson-Bailey Model');grid on;