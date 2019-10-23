%Example10p17
%In code, channels different coefficients 
RGB=imread('peppers.png');
New(:,:,1,1)=RGB(:,:,1)*(1/3);
New(:,:,2,1)=RGB(:,:,2)*(2/3);
New(:,:,3,1)=RGB(:,:,3)*(3/3);
New(:,:,1,2)=RGB(:,:,1)*(2/3);
New(:,:,2,2)=RGB(:,:,2)*(3/3);
New(:,:,3,2)=RGB(:,:,3)*(1/3);
New(:,:,1,3)=RGB(:,:,1)*(3/3);
New(:,:,2,3)=RGB(:,:,2)*(1/3);
New(:,:,3,3)=RGB(:,:,3)*(2/3);
subplot(221),imshow(RGB);
title('Original Image');
subplot(222),imshow(mat2gray(New(:,:,:,1)));
title('Image with R*(1/3)-G*(2/3)-B*1');
subplot(223),imshow(mat2gray(New(:,:,:,2)));
title('Image with R*(2/3)-G*(1)-B*(1/3)');
subplot(224),imshow(mat2gray(New(:,:,:,3)));
title('Image with R*(1)-G*(1/3)-B*(2/3)');