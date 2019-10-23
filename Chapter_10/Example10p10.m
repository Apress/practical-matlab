%Example10p10
%This code works with imfilter
H2=ones(3)/9;H3=ones(5)/25;
H4=[0, 1,0;1,-4,1;0, 1, 0];
I = imread('coins.png');
I2 = imfilter(I,H2);
I3 = imfilter(I,H3);
I4 = imfilter(I,H4);
subplot(2,2,1),imshow(I),title('Original Image');
subplot(222),imshow(I2),title('Filtering by H2');
subplot(223),imshow(I3),title('Filtering by H3');
subplot(224),imshow(I4),title('Filtering by H4');
