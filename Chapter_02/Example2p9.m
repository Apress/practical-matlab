%Example2p9
%This code calculates ln2
Total=0;
for i=1:1e+6 %1e+6=1000000
    Number=(-1)^(i+1)/i;
    Total = Total + Number;
end
fprintf('ln2= %d\n',Total);
