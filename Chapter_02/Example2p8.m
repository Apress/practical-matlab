%Example2p8
%This code uses menu function
city=menu('Select a city from the menu' ,...
    'Houston','San Antonio','Dallas','Austin');
switch city
    case 1
        fprintf('$450 \n');
    case 2
        fprintf('$550 \n');
    case 3
        fprintf('$650 \n');
    case 4
        fprintf('$750 \n');
end
