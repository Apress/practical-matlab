%Example11p6
% This code plays sine wave
A=32;N=1000;%Total number of points
Fs=1000;% Sampling frequency
frequency=20;%Frequency of sine wave
TimeVector=(0:N-1)/Fs;
y=A*sin(2*pi* frequency.*TimeVector);
sound(y);plot(TimeVector,y);
title('Sine Wave');ylabel('Amplitude');
xlabel('Time');
