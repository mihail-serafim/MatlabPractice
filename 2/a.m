maxvalue=-inf;

for x = -5:0.1:5
    for y = -5:0.1:5
        value = (x-9*y)/(x^2 + y^2 + 10*x -10*y +34);
        if value > maxvalue
            maxvalue = value;
            xmax = x;
            ymax = y;
        end
    end
end

xmax
ymax





