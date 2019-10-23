%Example2p20
%This example uses inputdlg box
prompt = {'\fontsize{12} Enter your Name:',...
    '\fontsize{12}Length', '\fontsize{12} Width'};
title = 'CALCULATING AREA';
Defining = {'Alex','3','2'};%Default values
NumLines=[1 50]; % dimensions 
opts.Interpreter = 'tex';
options.Resize='on';
options.WindowStyle='normal';
Vals=inputdlg(prompt,title,NumLines,Defining,opts);
Name=num2str(Vals{1});%value converted to string
LS=str2double(Vals{2});%value converted to double
SS=str2double(Vals{3});%value converted to double
Area = LS * SS; %Calculation is done
fprintf(" Hello %s\n The Area is :%i\n",Name,Area)
