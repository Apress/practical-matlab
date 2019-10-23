%Example10p18
%This code uses thresholding 
T=0.61;
im=mat2gray(imread('coins.png'));
[Row,Col]=size(im);
NewIm=zeros(Row,Col);
for i=1:Row
    for k=1:Col
        if im(i,k)>T
            NewIm(i,k)=1;
        else
            NewIm(i,k)=0;
        end
    end
end
figure,imshowpair(im,mat2gray(NewIm),'montage');
title ('Original Image and Thresholding');