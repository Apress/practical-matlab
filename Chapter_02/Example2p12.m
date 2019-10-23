%Example2p12
%A Guessing game with break command
Limit=100;%Can be changed
Picked_Number=randi(Limit,1);
Counter=1; %initializing counter
Gues=input('Enter your guess\n');
while true
    if Gues==Picked_Number
        fprintf('Got it in your %d th try\n',Counter);
        break;
    elseif Gues>Picked_Number
        Gues=input('Enter a SMALLER number\n');
    elseif Gues<Picked_Number
        Gues=input('Enter a BIGGER number\n');
    end
    Counter=Counter+1;
end
