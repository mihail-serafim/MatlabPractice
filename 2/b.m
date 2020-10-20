[x y] = meshgrid(-5:0.2:5,-5:0.2:5);

a = ones(size(x));
b = x .* (exp((-1/10)*(x.^2)) + y + 5/2) .* (sin((1/10)*x.^2 + 6));

ascaled = a./sqrt(a.^2+b.^2);
bscaled = b./sqrt(a.^2+b.^2);

quiver(x,y,ascaled,bscaled)
axis equal;
title('Direction Field Example for y''(x) = x^2 + y^2 - 1');
xlabel('x');
ylabel('y');

