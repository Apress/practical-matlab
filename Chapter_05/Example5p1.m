%Example5p1
%This code produces 7 numbers
MyNumbers = rand(1,7);
MyBigNumb = MyNumbers*10;
MyIntegers = round(MyBigNumb);
MyMod = mod(MyIntegers,7);
MyFinal = MyMod + 2;
disp(['The numbers are: ',int2str(MyFinal)])
%MyFinal=2+mod(round(10*rand(1,7)),7)

