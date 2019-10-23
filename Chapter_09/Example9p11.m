%Example9p11
%This code apply fft to 2-dimensional picture.
P = imread('cowboys.png');%reads the image
Y=fft2(P); %apply the filter
imshow(Y) % filtered image is shown
figure;
YY=ifft2(Y);%image is converted back
imshow(YY/256);%original image is shown
