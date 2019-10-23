%Example2p4
% This program rolls a pair of dice
Die=randi(6,1,2);
if Die(1)+Die(2)==10
    fprintf('You are LUCKY \n')
end
fprintf('First # is %d Second # is % d\n',...
Die(1),Die(2))

