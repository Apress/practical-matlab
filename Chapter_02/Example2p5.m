%Example2p5
% This program asks you age
Age = input('Please enter your age\n');
if Age < 6
    fprintf('Maybe NO School \n');
elseif Age <13
    fprintf('Middle School \n');
elseif Age <18
    fprintf('High School \n');
elseif Age <26
    fprintf('Maybe University \n');
else % for other possibilities
    fprintf('Professional \n') 
end
