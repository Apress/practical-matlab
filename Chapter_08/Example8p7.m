%Example8p7
%This code creates dot matrix and dotplot
Seq1='AATGCAATT';Seq2='ATTGACT';
X=length(Seq1);Y=length(Seq2);
DotMatrix=zeros(Y,X);
for i=1:Y
    Places=strfind(Seq1,Seq2(i));
    DotMatrix(i,Places)=1;
end
disp('The Dot Matrix:');
disp(DotMatrix);
figure;hAxes=gca;
imagesc(hAxes,DotMatrix);
colormap(hAxes,[0,0,1;1,0,0]);
ylabel(fliplr(Seq2));title(Seq1);