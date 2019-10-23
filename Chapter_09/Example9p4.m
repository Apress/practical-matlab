%Example9p4
%This code plots an even signal
t = -pi:0.001:pi;
y=(sin(t)).^2+cos(3*t)+1;
subplot(121);plot(t,y);grid on;
xlabel('t');ylabel('y');
title('Signal of y(t)');
t = -t;
y=(sin(t)).^2+cos(3*t)+1;
subplot(122);plot(t,y);grid on;
xlabel('t');ylabel('y');
title('Signal of y(-t)');