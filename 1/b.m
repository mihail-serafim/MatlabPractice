h = 0.01;
X = 13;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 5.69;

for n = 1:N
  x(n+1) = x(n) + h;
  y(n+1) = y(n) + h*(-y(n)/(sqrt(5.7^2 - y(n)^2)));
end


plot(x,y,'r'); % plotting
title('Tractrix');
xlabel('x'); ylabel('y');
xlim([0 13]);