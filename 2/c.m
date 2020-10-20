[x y] = meshgrid(-2:0.2:2,4:0.2:8);

a = ones(size(x));
b = (1/8).*y.^1 - exp(-9.*x.^1);

ascaled = a./sqrt(a.^2+b.^2);
bscaled = b./sqrt(a.^2+b.^2);

x1 = linspace(-2,2,100);
y1 = (8/73)*exp(-9*x1) + (430/73)*exp((1/8)*x1); 

plot(x1,y1,'k','LineWidth', 2); % plotting
title('Mihail Serafimovski 400269483');
xlim([-2, 2]);
ylim([4, 8]);

hold on
quiver(x,y,ascaled,bscaled);
axis equal;
hold off





