%Example2p13
%This code uses continue command
Counter = 3;
while Counter>0
    Number = input('Enter a number\n');
    if Number<0
        fprintf('The number should be positive\n');
        continue;
    end
    fprintf('Square root of %d is =%d\n',...
        Number,sqrt(Number));
    Counter = Counter-1;
end
