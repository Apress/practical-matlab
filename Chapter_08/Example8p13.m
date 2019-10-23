%Example8p13
%This code solves SIR model
[t,x]=ode45(@SIR,[0,50],[9,1,0]);
%semilogx(t,x);
plot(t,x);
xlabel('time');ylabel('population');
title('SIR Model');grid on;
legend('Susceptable','Infected','Recovered');
function Sir=SIR(t,x)
beta=.9;%contact rate by people in population i
gamma=1;%Recovery rate
N=10;%N=Total number of population
%dS/dt=Sir(1),x(1)=suscepatible people
ds=-(beta/N)*x(1)*x(2);
%dI/dt=Sir(2),x(2)=exposed by infection
di=(beta/N)*x(1)*x(2)-gamma*x(2);
%dr/dt=sir(3),x(3)=Recovered from infection
dr=gamma*x(2);
Sir=[ds;di;dr];
end
