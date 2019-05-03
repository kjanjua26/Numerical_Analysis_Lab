function Euler_Method()
    t = 0:0.1:3;
    x = t.*(sin(t).^3);
    h = 0.1;
    y(1) = 1;
    for i = 2:length(t)
        y(i) = y(i-1) + h*x(i-1);
    end

end
