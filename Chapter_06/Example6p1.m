%Example6p1
%This code finds statistical values
A=randi(100,3,4);
%Maximum number is set as 100
Maximum = max(A);
MeanVal = mean(A);
StanDev = std(A);
disp(['The maximum numbers are ',...
    num2str(Maximum)])
disp(['The mean numbers are ',...
    num2str(MeanVal)])
disp(['The standard deviations are ',...
    num2str(StanDev)])
