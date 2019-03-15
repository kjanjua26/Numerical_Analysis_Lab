% Source of the code: https://www.mathworks.com/matlabcentral/answers/305169-what-is-the-code-for-lagrange-interpolating-polynomial-for-a-set-of-given-data
function Lagrange_Multiple(x,y)
    coefficient = 0;
    len = length(x);
    for i=1:len
        p=1;
        for j=1:len
            if j~=i
                c = poly(x(j))/(x(i)-x(j));
                p = conv(p,c);
            end
        end
        term = p*y(i);
        coefficient = coefficient + term;
    end
    syms x;
    fprintf('The polynomial is: %s\n', poly2sym(coefficient, x));
    fprintf('The value at 3 is: %d\n', polyval(coefficient, 3));
end
