%Example10p8
%This code uses imadjust and 
%stretchlim functions
im=imread('Cowboys.png');fontSize=10;
Stretched_Image = imadjust(im, ...
    stretchlim(im, [0.08, 0.92]),[]);
subplot(221), imshow(im);
title('Original Image','FontSize',...
    fontSize);
subplot(222),imshow(Stretched_Image), 
title('Strethced Image','FontSize',...
    fontSize);
subplot(223), imhist(im), 
title('Original Image',...
    'FontSize',fontSize);
subplot(224), imhist(Stretched_Image), 
title('Stretched Image',...
    'FontSize',fontSize);