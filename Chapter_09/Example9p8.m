%Example9p8
%This code plots graph of a signal
n=79;Point=1000;
x=linspace(-2*pi,2*pi,Point);
bn=zeros(1,Point);a0=0*bn;an=0*bn;
for i=1:2:n
    Calc1=(1/i).*cos((i*pi.*x)/1.5);
    Calc2=(1/i).*sin((i*pi.*x)/1.5);
    an = an + Calc1;
    bn = bn + Calc2;
end
fx=a0+(4/pi)*(an+bn);
plot(x,fx);grid on;axis('equal');
xlabel('x');ylabel('signal');
title('Signal in time');