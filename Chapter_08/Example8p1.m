%Example8p1
%This code solves 1st order ode
%which models Bacterial Growth
clear all;close all;
time=0:0.1:20;
Alpha=0.1;% Grow Rate
N_0=100;%initial condition
N=N_0*exp(Alpha*time); %Exact Solution
[x,y]=ode45(@MyFunc,[0,20],100);
plot(time,N,x,y,'ro');
xlabel('time:t');title('Popolation Changes');
ylabel('Population');grid on;
legend('Exact Solution','Numerical Solution');
function Out=MyFunc(x,y)
Alpha=0.1;
Out=Alpha*y;
end
