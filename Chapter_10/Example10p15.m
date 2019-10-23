%Example10p15
%This code applies and cleans noise
im = rgb2gray(imread('peppers.png'));
no1=imnoise(im,'speckle',0.05);
subplot(221),imshow(im),title('Original Image')
subplot(222),imshow(no1),title('Noisy Image')
no2=mat2gray(filter2(fspecial('average',3),no1));
subplot(223),imshow(no2)
title('FIR Filtered Image')
no3= wiener2(no1,[5 5]);%neighborhoods of 5-by-5
subplot(224), imshow(no3)
title('Adaptive Filtered Image')