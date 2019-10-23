%Example11p7
% This plays sound
A=1.5;% Amplitude
N=1500;%Total number of points
Fs=1000;% Sampling frequency
freq=50;%Frequency of sine wave
TV=(0:N-1)/Fs;%time vector
ysin=A*sin(2*pi* freq.*TV)+...
    A*sin(4*pi* freq.*TV);
Y = fft(ysin);y = abs(Y/N);
P1=y(1:N/2+1);P1(2:end-1)=2*P1(2:end-1);
t=Fs*(0:(N/2))/N;sound(ysin);plot(t,P1,'r');