%Example3p9
%This code finds maximum value
syms x
R = -25*x^2+100*x+8000;
Derivat = diff(R,x);
Number = solve(Derivat,x);
EvalFunc = matlabFunction(R);
MaxVal = EvalFunc(double(Number));
disp(['Maximum Revenue is ',...
    num2str(MaxVal)])