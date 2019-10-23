%Example9p2
%This code has a periodic signal
t = -2*pi:0.001:2*pi;
y=5*(sin(4*t-1)).^3;
plot(t,y);grid on;
xlabel('t');ylabel('y');
title('A Periodic Signal');