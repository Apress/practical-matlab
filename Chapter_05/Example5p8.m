%Example5p8
%This code shows traffic flow
rw=5;%road width
rl=25;%road length
road = zeros(rw,rl);
xpos=2;ypos=4;
road(ypos,xpos)=1;
imagesc(road)
axis equal
for t=0:20
    %clear previous vehicle
    road(ypos,xpos)=0;
    %update new position
    xpos=xpos +1;
    road(ypos,xpos)=1;
    %plot new position
    imagesc(road)
    Time=sprintf('Time: %i',t);
    title(Time)
    axis equal;
    pause(0.4);
end
