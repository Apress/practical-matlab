%Example9p7
%This code plots graph of a signal
n=49;Point=1000;
x=linspace(-2*pi,2*pi,Point);
bn=zeros(1,Point);a0=0*bn;an=0*bn;
for i=1:2:n
    Calc=(1/i).*sin((i*pi.*x)/2);
    bn = bn + Calc;
end
bn=(4/pi)*bn;fx=a0+an+bn;
plot(x,fx);grid on;axis('equal');
xlabel('x');ylabel('signal');
title('Square Wave Signal');
