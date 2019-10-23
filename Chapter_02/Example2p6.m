%Example2p6
%This program uses relational operators
Age=input('Please Enter Your Age \n');
if Age<16
    fprintf('No license \n');
elseif Age<18 && Age >=16
    fprintf('Can get a youth license  \n');
elseif Age<70 && Age>=18
    fprintf('Can have a standard license \n');
else % for the other possibilities
    fprintf('Should get a permitted license\n');
end
