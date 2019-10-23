%Example3p1
%This code calculates simple interests
P = input('Enter Principal Amount: ');
R = input('Enter Annual Rate: ');
T = input('Enter Time As Month: ');
Interest=P*R*(1/12)*T;
Total = P + Interest;
fprintf('Paid Interest Amount is: %.2f\n',Interest)
fprintf('Total Payment is: %.2f\n',Total)