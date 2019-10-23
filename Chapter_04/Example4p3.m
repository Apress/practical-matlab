%Example4p3
%This code uses fzero function
Myfunc = @(x) 2*cos(x); % function
x0 = pi/4; % around this point
FirstKind = fzero(Myfunc,x0); % the usage
CorrespondingDegree1 = (FirstKind)*(180/pi);
fprintf("1st root is %d degree\n",CorrespondingDegree1)
interval = [pi, 2*pi];% interval for 2nd usage
SecondKind = fzero(Myfunc,interval);
CorrespondingDegree2 = (SecondKind)*(180/pi);
fprintf("2nd root is %d degree\n",CorrespondingDegree2)
