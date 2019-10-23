%Example5p5
%This code simulates a pair of dice
N=input('Enter 1 to roll a pair of dice\n');
while (N==1)
    Die=randi(6,1,2);
    switch sum(Die)
        case 7
            disp('You WON $100');
            fprintf('Numbers: %i and %i\n',...
                Die(1),Die(2));
        case 10
            disp('You WON $50000');
            fprintf('Numbers: %i and %i\n',...
                Die(1),Die(2));
        otherwise
            N=2;
            fprintf('Numbers: %i and %i\n',...
                Die(1),Die(2));
    end
end   