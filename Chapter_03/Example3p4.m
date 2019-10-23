%Example3p4
%This code calculates compound interests
format short
P = 15e+4;
Rprime=0.12;
C=5;
Balance = P*((1+Rprime)^C);
Interest = Balance - P;
fprintf('Obtained interest: %.20f\n',Interest)