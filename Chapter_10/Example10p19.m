%Example10p19
%This code uses graythresh and imbinarize funct.
im = imread('coins.png');
Level = graythresh(im);%using otsu's method
BinaryIm = imbinarize(im,Level);%binarize the image
imshowpair(im,BinaryIm,'montage');
title ('Original Image and Thresholding');