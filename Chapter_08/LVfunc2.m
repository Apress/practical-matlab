function dxdt = LVfunc2(t,x)
dxdt=[0;0;0]; gama = 0.4; alpha = 0.4; 
delta = 2.0; beta = 0.2;
e=0.2;f=0.1;g=0.15;
dxdt(1)=gama*x(1)-alpha*x(1)*x(2);%prey
dxdt(2)=-delta*x(2)+beta*x(1)*x(2)-...
    e*x(2)*x(3);%predators
dxdt(3)=f*x(2)*x(3)-g*x(3);%3rd organism
end