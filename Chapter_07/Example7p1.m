%Example7p1
%This code plots 3-D
close all;
t = linspace(0,8*pi,1000);
x=sin(3*t);y=cos(2*t)-5;z=3*t;
plot3(x,y,z)
xlabel('sin(t)');
ylabel('cos(t)');
zlabel('t');
grid on
title('3-D Plot')
