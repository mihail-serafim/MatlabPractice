X = 3;
N = 16;
h = X/N;

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 35;

for n = 1:N
  x(n+1) = x(n) + h;
  y(n+1) = y(n) + h*((-19/10)*(y(n)-23));
end


yExact = 23 + 12*exp((-19/10).*x);
error = abs(y-yExact);


while max(error) > 0.09992
    N = N + 1;
    h = X/N;
    
    for n = 1:N
        x(n+1) = x(n) + h;
        y(n+1) = y(n) + h*((-19/10)*(y(n)-23));
    end

    yExact = 23 + 12*exp((-19/10).*x);
    error = abs(y-yExact);    
end

N


