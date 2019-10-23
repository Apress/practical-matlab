%Example3p8
%This code calculates cost (total cost)
Number = input('Number of bikes for production\n');
Cost = @(x) 50*x+35;
CostCalculation = Cost(Number);
disp(['The cost is ', num2str(CostCalculation)])