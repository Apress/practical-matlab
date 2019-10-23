%Example10p25
%This code applies erosion and dilation
I= rgb2gray(imread('cowboys.png'));
BW=imresize(I,[300 400]);
se = strel('cube',3);
BW1=imerode(BW,se);
BW2 = imdilate(BW,se);
figure,imshowpair(BW,BW1,'montage');
title('Original  with Erosion');
figure,imshowpair(BW,BW2,'montage');
title('Original  with Dilation');