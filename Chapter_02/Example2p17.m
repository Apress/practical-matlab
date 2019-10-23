%Example2p17
%This code uses local and global variables.
Numb1 = 61; %this is global variable
fprintf("Variable outside :%i\n", Numb1)
MyFunction();%function is called
fprintf("Variable outside :%i \n", Numb1)
function MyFunction
Numb1 = 55; %this is local variable
fprintf("Variable inside :%i\n", Numb1)
end
