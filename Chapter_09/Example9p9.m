%Example9p9
%This code works with fft
Fs = 100; % Sampling frequency
t=linspace(0,1,Fs);
x = sin(2*pi*t);
Nfft = 512; % Length of FFT
X = fft(x,Nfft);
% FFT is symmetric, take half
X = X(1:Nfft/2);
% Frequency vector
f = (0:Nfft/2-1)*Fs/Nfft;
figure(1);%for graph of sine
stem(t,x);grid on;
title('Signal of Sine Wave');
xlabel('Time');
ylabel('Amplitude');
figure(2); % for power spectum
plot(f,abs(X));grid on;
title('Power Spectrum');
ylabel('Power');
xlabel('Frequency'); 