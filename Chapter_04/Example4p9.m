%Example4p9
%This code uses integral function
format long
Myfun = @(x) 2*exp(x.^2).*x;
NumericSol = integral(Myfun,0,1);
AnalyticSol = exp(1)-1;
Error = abs(NumericSol - AnalyticSol);
fprintf('Numerical solution :%e\n',NumericSol)
fprintf('Analytical solution:%e\n',AnalyticSol)
fprintf('Error is           :%e\n',Error)
