function Trapezoidal_Rule()
    figure; hold on
    x = 0:0.1:2;
    p = [25 -120 90 2 0.2];
    y = polyval(p, x);
    plot(x,y);
    for j = 1:7
        n = 2^j;
        p = [25 -120 90 2 0.2];
        x = 0:1/n:2;
        y = polyval(p, x);
        plot(x, y, 'r');
        h = (x(length(x)) - x(1))/length(x);
        res = y(1) + y(length(y));
        for i = 2:length(y)-1
            res = res + 2*y(i);
        end
        integral_sol(j) = (h*res)/2;
    end
    disp('Using Trapezoidal Rule')
    disp('n Approximation')
    for j = 1:7
        disp(['n = ', num2str(2^j, '%d'), '     ', num2str(integral_sol(j), '%1.10f')])
       
end
