%Example9p6
%This code plots current values
t=0:0.05:5;
V=2;R=1;L=1/2;
i=(V/R)*(1-exp(-R.*t/L));
plot(t,i,'bo');grid on;
xlabel('t');ylabel('current');
title('Current with time');