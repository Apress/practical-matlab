%Example10p16
%This code separate RGB colors
RGB = imread('peppers.png');
[R,G,B]=imsplit(RGB);
disp(size(RGB));
disp(RGB(1:5,1:5,:));
subplot(221),imshow(RGB)
title('Original Image');
subplot(222),imshow(R),title('R Channel');
subplot(223),imshow(G),title('G Channel');
subplot(224),imshow(B),title('B Channel');
