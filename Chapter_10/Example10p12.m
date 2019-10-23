%Example10p12
%This code works in frequency domain
im =imread('cowboys.png');
P_grayscale = rgb2gray(im);close all;
P_grayscale=double(P_grayscale);
subplot(221),imshow(mat2gray(P_grayscale));
title('Original Image');
%Ýmage i frequency domain
freq_rec=fft2(P_grayscale);
freq_rec=fftshift(freq_rec);
freq_rec_disp=log(1+abs(freq_rec));
%image shown in frequency domain.
subplot(222),imshow(mat2gray(freq_rec_disp));
title('Fourier transform is applied');
[Row,Col]=size(P_grayscale);
Filter =My_filter(Row,Col);
% Applying filtering
Filtering = freq_rec.*Filter;
Filtering_disp=log(1+abs(Filtering));
subplot(223),imshow(mat2gray(Filtering_disp));
title('Applied Filter');
%%% converting back to image
FilteredIm=real(ifft2(ifftshift(Filtering)));
subplot(224),imshow(mat2gray(abs(FilteredIm)));
title('Enhanced Image');
