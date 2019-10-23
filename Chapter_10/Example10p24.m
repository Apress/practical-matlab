%Example10p24
%This code applies discrete Laplacian
Im=double(rgb2gray(imread('cowboys.png')));
[Row,Col]=size(Im);
Im2=zeros(Row-1,Col-1);
Im2(1,1)=Im(1,1); 
Filt=[0,1,0;1,-4,1;0,1,0];
Filt=flipud(Filt); 
Filt=fliplr(Filt); 
for i=2:Row-1
    for j=2:Col-1
        nhbr_mtrx=Filt.*Im(i-1:i+1, j-1:j+1); 
        avg_val=sum(nhbr_mtrx(:)); 
        Im2(i, j)=avg_val; 
    end 
end 
imshow(uint8(Im2)); title('Discrete Laplacian');