h1 = 0.4;
h2 = 0.2;
h3 = 0.1;
X = 2;
N1 = round(X/h1);
N2 = round(X/h2);
N3 = round(X/h3);
x = zeros(1,N1+1);
y = zeros(1,N1+1);

x(1) = 0;
y(1) = 2;


for n = 1:N1
  x(n+1) = x(n) + h1;
  y(n+1) = y(n) + h1*(x(n)*x(n)*y(n)/3);
end
x1=x;
y1=y;

for n = 1:N2
  x(n+1) = x(n) + h2;
  y(n+1) = y(n) + h2*(x(n)*x(n)*y(n)/3);
end
x2=x;
y2=y;

for n = 1:N3
  x(n+1) = x(n) + h3;
  y(n+1) = y(n) + h3*(x(n)*x(n)*y(n)/3);
end
x3=x;
y3=y;

yExact = 2*exp((1/9)*x3.^3);
error = abs(y3-yExact);


plot(x,yExact,'r',x1,y1,'b',x2,y2,'g',x3,y3,'k'); % plotting
title('Eulers Method w/ error'); % figure's title
legend('exact solution','h=0.4','h=0.2','h=0.1', 'Location','NorthWest'); % legend
xlabel('x'); ylabel('y'); % and axis labels
xlim([0 2])




