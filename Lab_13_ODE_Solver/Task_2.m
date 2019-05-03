function WaterDrainageCalc()
    % Solving ODEs for good using Euler's method.
    k = 0.06;
    y0 = 3;
    h = 0.5;
    for i = 1:10000
        y1 = y0 + h*(-k*sqrt(y0));
        y0 = y1;
        if (y0 <= 0)
            break;
        end
    end
    fprintf('The time it takes is: %f\n', h*i);
end
