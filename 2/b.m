[x y] = meshgrid(-5:0.2:5,-5:0.2:5);

a = ones(size(x));
b1 = x .* (exp((-1/10)*(x.^2)) + y + 5/2) .* (sin((1/10)*x.^2 + 6));

ascaled = a./sqrt(a.^2+b1.^2);
bscaled = b1./sqrt(a.^2+b1.^2);


quiver(x,y,ascaled,bscaled);
axis equal;
title('Direction Field');
xlabel('x');
ylabel('y');

