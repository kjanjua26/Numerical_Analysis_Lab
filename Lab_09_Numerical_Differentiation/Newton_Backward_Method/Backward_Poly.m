function Backward_Poly(table, n, h, val, x_n)
    backward_values = zeros(6, 1);
    syms s(x) p(x) f(x);
    for i = 1:n % getting the values from the table.
        points = nonzeros(table(:,i));
        backward_values(i) = points(length(points));
    end
    backward_values(1) = 0.0;
    s(x) = (x - x_n)/h;
    p(x) = table(1);
    
    for i = 2:n % computing the backward difference. 
        f(x) = 1;
        for j = 0:i-2
            f(x) = f(x)*(s(x) + j);
        end
        p(x) = p(x) + f(x)*backward_values(i)/factorial(i-1);
    end

    fprintf('Polynomial of degree %d: %s\n', n, p(x));
    fprintf('Value at %0.3f is: %.5f\n',val, p(val));
end
