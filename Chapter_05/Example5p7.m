%Example5p7
%The code simulates random walk in 2-d
close all;clear all;P = 0;%position
Steps = 15;X=0;Y=0;Step = 1;
plot(X,Y,'co');hold on
format short
for i=1:Steps
    W = rand;
    if W<0.5
        St = linspace(X,X+1,21);
        X = X + Step;
        plot(St,Y,'r*')
        hold on
    else
        St = linspace(Y,Y+1,21);
        Y = Y + Step;
        plot(X,St,'bs')
        hold on
    end
    pause(0.5)
    disp([X,Y])
end
grid on
xlabel('Red-->Right | Blue-->Up')
ylabel('Direction in each step')
title('Random Walk in Each Step')