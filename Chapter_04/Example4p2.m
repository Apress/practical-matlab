%Example4p2
%This code uses polyfit function
x=[4, 6, 6.5, 8, 10];y=[4, 8, 6, 7, 9];
P1 = polyfit(x,y,1)%1st degree
P2 = polyfit(x,y,2)%2nd degree
P3 = polyfit(x,y,3)%3rd degree
P4 = polyfit(x,y,4)%4th degree
%Using obtained curves
xx = 3:0.5:20;
y1 = polyval(P1,xx);
y2 = polyval(P2,xx);
y3 = polyval(P3,xx);
y4 = polyval(P4,xx);
subplot(221)
plot(x,y,'s',xx,y1);title('1st degree')
subplot(222)
plot(x,y,'s',xx,y2);title('2nd degree')
subplot(223)
plot(x,y,'s',xx,y3);title('3rd degree')
subplot(224)
plot(x,y,'s',xx,y4);title('4th degree')
