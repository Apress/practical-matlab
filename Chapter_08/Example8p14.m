%Example8p14
%This code solves SEIR model
[t,x]=ode45(@Seir,[0,50],[17,2,1,0]);
plot(t,x);
xlabel('time');ylabel('population');
title('SEIR Model');grid on;
legend('Susceptable',...
    'Exposed','Infected','Recovered');
function SEIR=Seir(t,x)
N=10;beta=.8;delta=0.4;gamma=1;
SEIR(1,:)=-(beta/N)*x(1)*x(3);
SEIR(2,:)=(beta/N)*x(1)*x(3)-delta*x(2);
SEIR(3,:)=delta*x(2)-gamma*x(3);
SEIR(4,:)=gamma*x(3);
end