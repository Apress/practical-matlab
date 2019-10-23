%Example2p2
%this calculates the area and perimeter of a circle
Radius = input('Please enter the radius\n');
AreA = pi*(Radius^2);
Per= 2*pi*Radius;
disp(['Area of the circle is= ',num2str(AreA)]);
fprintf('Perimeter of the circle is = % d\n',Per);
