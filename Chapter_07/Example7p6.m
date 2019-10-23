%Example7p6
%This code creates a movie
t=linspace(0,2*pi,1000);Count=1;
figure('Name',...%'NumberTitle','off')
    'Original Draw','Menu','none')
for freq=0:0.1:2*pi
          y=sin(freq*t);
          plot(t,y);
          xlabel('2 pi');ylabel('Results');
          axis([0,2*pi,-1,1])
          Script1=sprintf('y(t)=sin(%.1f t)',freq);
          title('Sinusoidal Function');
          text(1,0.5,Script1)
          M(Count)=getframe;Count=Count+1;
end
figure('Name',...
    'Playing Created Animation twice','Menu','none')
movie(M,2);
