%Example10p11
%This code works with imfilter andfspecial
H2 = fspecial('gaussian');
H3 = fspecial('average');
H4 = fspecial('motion');
I = imread('peppers.png');
I2 = imfilter(I,H2);
I3 = imfilter(I,H3);
I4 = imfilter(I,H4);
subplot(221),imshow(I),title('Original Image');
subplot(222),imshow(I2),title('By gaussian');
subplot(223),imshow(I3),title('By average');
subplot(224),imshow(I4),title('By motion');
