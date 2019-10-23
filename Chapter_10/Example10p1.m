%Example10p1
%This code takes the transpose of RGB
RGB = imread('peppers.png');
subplot(211);imshow(RGB)
New_RGB(:,:,1) = RGB(:,:,1)';
New_RGB(:,:,2) = RGB(:,:,2)';
New_RGB(:,:,3) = RGB(:,:,3)';
subplot(212);imshow(New_RGB)

