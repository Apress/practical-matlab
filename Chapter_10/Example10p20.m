%Example10p20
%This code uses double thresholding 
T1=0.618;T2=0.38;
im=mat2gray(imread('coins.png'));
[Row,Col]=size(im);
NewIm=zeros(Row,Col);
for i=1:Row
    for k=1:Col
        if (im(i,k)>T2) && (im(i,k)<T1) 
            NewIm(i,k)=1;
        else
            NewIm(i,k)=0;
        end
    end
end
figure,imshowpair(im,mat2gray(NewIm),'montage');
title ('Original Image and Thresholding');