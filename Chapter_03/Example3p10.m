%Example3p10
%This code profit
syms x
R = -x^2+4*x+12;
Derivat = diff(R,x);
Number = double(solve(Derivat,x));
C = @(x) 3+2*x;
Rev = @(x) -x^2+4*x+12;
disp(['For maximum R, x =',...
    num2str(Number)])
Profit=Rev(Number)-C(Number);
disp(['Profit, Pr=',...
    num2str(Profit)])