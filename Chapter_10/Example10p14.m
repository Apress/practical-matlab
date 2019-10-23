%Example10p14
%This code applies salt & pepper noise
I1 = rgb2gray(imread('peppers.png'));
WithNois=imnoise(I1,'salt & pepper',0.2);
I2=medfilt2(I1);
subplot(121),imshow(WithNois);
title('Salt & Pepper Noise');
subplot(122),imshow(I2);
title ('Cleaning Noise');

