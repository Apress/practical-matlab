%Example9p3
%This code has a periodic signal
t = -pi:0.001:pi;
y=2*sin(4*t)+cos(6*t-2);
plot(t,y);grid on;
xlabel('t');ylabel('y');
title('A Periodic Signal');