%Example10p3
%This code rotates images
F = imread('football.jpg');
F30  = imrotate(F,30);
F90  = imrotate(F,90);
F180 = imrotate(F,180);
subplot(2,2,1),imshow(F)
title('Original Image') 
subplot(2,2,2),imshow(F30)
title('Rotation with 30') 
subplot(2,2,3),imshow(F90)
title('Rotation with 90') 
subplot(2,2,4),imshow(F180)
title('Rotation with 180') 
