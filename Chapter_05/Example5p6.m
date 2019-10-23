%Example5p6
%The code simulates random walk in 1-d
close all; Y=1; P = 0;%position
Steps = 20; Step = 1;
for i=1:Steps
    W = rand;
    if W>0.5
        P = P + Step;
        St = linspace(P-1,P,21);
        plot(St,Y,'r*')
        hold on
    else
        St = linspace(P,P-1,21);
        P = P - Step;
        plot(St,Y,'b+')
        hold on
    end
    Y = Y + 1;
    pause(0.5)
end
grid on
xlabel('Red-->right | Blue-->left')
ylabel('Direction in each step')
title('Random Walk in Each Step')
disp(['Final Place :',num2str(P)])