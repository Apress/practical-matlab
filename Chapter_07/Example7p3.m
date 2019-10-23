%Example7p3
%This code animates 2-D
x = 0:0.05:3*pi;
y = sin(x.^2);
N = length(x)
for i=1:N
    y_plot = (i/N)*y;
    plot(x,y_plot)
    axis([0,3*pi,-1,1]);
    xlabel('x values')
    ylabel('y values')
    title('Animating 2-D')
    pause(0.02)
end
grid on
