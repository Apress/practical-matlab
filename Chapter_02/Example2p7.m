%Example2p7
%This program has a switch-case illustration
Money=input('How much money you have? \n');
switch Money
    case 20
        fprintf('You can eat Chicken \n');
    case 30
        fprintf('You can eat Lobster \n');
    case 40
        fprintf('You can eat Beef \n');
    case 50
        fprintf('You can eat Fish \n');
    otherwise % for other possibilities
        fprintf('No match with the menu \n');
end
