%Example11p5
% This code reverse the hallelujah
load handel;
L=length(y);
y2=zeros(L,1);
for i=1:L
    y2(L-i+1)=y(i);
end
sound(y2,Fs);
disp('First 5 Data of Original Handel');
disp(y(1:5));
disp('Last 5 Data of Reversed Handel');
disp(y2(end-4:end));    

