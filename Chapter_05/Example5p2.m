%Example5p2
%This code uses randperm function
Numbers = randperm(20,5);
Seq= Numbers([1,1,2,2,3,3,4,4,5,5]);
disp('Randomly Selected Numbers:');
disp(Numbers);
disp('Numbers of Sequence:');
disp(Seq);