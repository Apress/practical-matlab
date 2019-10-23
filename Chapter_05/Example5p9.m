%Example5p9
%This code shows traffic flow
rw=11;rl=25;
road = zeros(rw,rl);
road(6,:)=1;
x1pos=2;y1pos=9;
x2pos=19;y2pos=3;
road(y1pos,x1pos)=1;
road(y2pos,x2pos)=1;
imagesc(road);axis equal
for t=0:15
    %clear previous vehicle
    road(y1pos,x1pos)=0;
    road(y2pos,x2pos)=0;
    %update new position
    x1pos=x1pos +1;
    x2pos=x2pos -1;
    road(y1pos,x1pos)=1;
    road(y2pos,x2pos)=1;
    %plot new position
    imagesc(road)
    Time=sprintf('Time: %i',t);
    title(Time);axis equal;
    pause(0.4);
end