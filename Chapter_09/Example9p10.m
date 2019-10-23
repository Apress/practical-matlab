%Example9p10
%This code works with fft
x = [1 2 0 2 zeros(1,60)]; % zero-padded sequence
N = length(x);X = fft(x); 
X = fftshift(X); % shift DFT coefficients
w=linspace(-pi,pi,N);%compute frequencies
stem(w,abs(X)); % plot magnitude spectrum
grid on;title('Magnitude of Spectrum');
xlabel('Frequency');ylabel('Amplitude');
figure; % new one is opened
stem(w,angle(X));% plot the phase spectrum
grid on;title('Phase Spectrum');
xlabel('Frequency');ylabel('Amplitude');