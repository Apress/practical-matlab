%Example10p13
%This code works with imnlmfilt function
I = rgb2gray(imread('peppers.png'));
noisyImage = imnoise(I,'gaussian',0,0.0005);
filteredImage = imnlmfilt(noisyImage);
subplot(121),imshow(noisyImage);
title('Image with noisy');
subplot(122),imshow(filteredImage);
title ('Filtered Image');