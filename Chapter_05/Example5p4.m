%Example5p4
%This code rolls die and print the sum
N=input('Enter the number of times to roll\n');
[Results,Sums] = RollDie(N);
disp('The Rolled Die');
disp(Results);
disp('The Sums For Each Rolling');
disp(Sums);
function [Results,Sums] = RollDie(Number)
Results = zeros(Number,2);
Sums = zeros(Number,1);
for i=1:Number
    Die=randi(6,1,2);
    Sum=Die(1)+Die(2);
    Results(i,1:2)=Die;
    Sums(i)=Sum;
end
end


    