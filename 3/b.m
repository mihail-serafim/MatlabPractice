X = 5;
N = 129;
h = X/N;

x = zeros(1,N+1);
y = zeros(1,N+1);
g = zeros(1,N+1);

x(1) = 0;
y(1) = 35;
g(1) = 23 + 10*sin(10/(0.5));
for n = 1:N
    x(n+1) = x(n) + h;
    g(n+1) = 23 + 10*sin(10/(x(n)^2+0.5));
end

for n = 1:N
    x(n+1) = x(n) + h;
    y(n+1) = y(n) + h*((-19/10)*(y(n)-g(n)));
end

plot(x,y,'r',x,g,'b'); % plotting
title('Mihail Serafimovski 400269483'); % figure's title
legend('Surrounding temperature g(t)','Bolt temeperature T(t)','Location','Southeast'); % legend
xlabel('x'); ylabel('y'); % and axis labels

xlim([0 5])