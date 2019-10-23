%Example10p4
%This code combines images
I = imread('rice.png');
J = imread('cowboys.png');
[rr,cr]=size(I);[rj,cj]=size(J);
Row=min(rr,rj);Col=min(cr,cj);
K = imadd(I(1:Row,1:Col),J(1:Row,1:Col));
JJ = imadd(I,100);subplot(2,2,1)
imshow(I);title('Only Rice') 
subplot(2,2,2),imshow(J)
title('Only cowboy');subplot(2,2,3)
imshow(JJ);title('100 added to Rice')  
subplot(2,2,4),imshow(K)
title('Combined Picture')



