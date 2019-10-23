%Example7p2
%This code uses meshgrid and surf
close all;
[x,y] = meshgrid(linspace(-8,8,30));
[xx,yy]=meshgrid(linspace(-1.5,1.5,30),...
    linspace(-1.5,1.5,30));
z1 = sin (sqrt(x.^2+y.^2))./sqrt(x.^2+y.^2);
z2 = sin(3*xx.^2+2*yy.^2)./(xx.^2+yy.^2);
figure(1)
surf(z1), shading flat
title('Mexican Hat');
figure(2)
surf(z2), shading faceted
title('Cowboy Hat');
% other possible shadings: flat, faceted, interp
