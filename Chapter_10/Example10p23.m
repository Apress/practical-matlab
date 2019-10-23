%Example10p23
%This code find edges without built-in funct.
Im=double(rgb2gray(imread('cowboys.png')));
[Row,Col]=size(Im);
Im2=zeros(Row-1,Col-1);
Im2(1,1)=Im(1,1);
Filt=[0,-1,-1;1,0,-1;1,1,0]; 
Filt=flipud(Filt); 
Filt=fliplr(Filt); 
for i=2:size(Im, 1)-1
    for j=2:size(Im, 2)-1
        nghb_mtrx=Filt.*Im(i-1:i+1, j-1:j+1); 
        avg_val=sum(nghb_mtrx(:)); 
        Im2(i, j)=avg_val; 
    end 
end
imshow(uint8(Im2));
title('Edge Detection');