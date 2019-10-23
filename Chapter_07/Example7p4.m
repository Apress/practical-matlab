%Example7p4
%This code animates 2-D
N=100;
Angle = linspace(-pi,pi,N);
xc = sin(Angle);yc = cos(Angle);
plot(xc,yc);axis equal
xt = [1 1 1 1];yt = [0 0 0 0];
hold on
t = area(xt,yt); % initialize flat triangle
for j = 1:N
    xt(j) = xc(j); % determine new vertex value
    yt(j) = yc(j);
    t.XData = xt; % update data
    t.YData = yt; % update data
    drawnow % display updates
end
title('Final Frame of Animation')