function HIV=Hiv(t,x)
dx=0.12;dy=0.5;dv=4;
beta=3e-7;k=1e+2;gamma=1e+5;
HIV(1,:)=gamma -dx*x(1)-beta*x(1)*x(3);
HIV(2,:)=beta*x(1)*x(3) -dy*x(2);
HIV(3,:)=k*x(2)-dv*x(3)-beta*x(1)*x(3);
end