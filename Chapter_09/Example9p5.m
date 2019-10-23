%Example9p5
%This code find currents 
%for an electrical network
A=[90 -20 -30;-20 65 -40;-30 -40 150];
B=[40;0;500];
Sol=(A)\B;
disp(['x=',num2str(Sol(1))]);
disp(['y=',num2str(Sol(2))]);
disp(['z=',num2str(Sol(3))]);


