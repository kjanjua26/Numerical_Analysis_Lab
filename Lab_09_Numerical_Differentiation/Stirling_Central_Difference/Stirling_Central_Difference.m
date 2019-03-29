function Stirling_Central_Difference(table, n)
    syms x;
    central_vals = zeros(7,1);
    for i = 1:n,
        points = nonzeros(table(:,i));
        len = length(points);
        if (mod(len,2) == 1),
            central = points(int32(len)/2);
            central_vals(i) = central;
        else
            central = (points(int32(len)/2) + points(int32(len)/2 + 1))/2;
            central_vals(i) = central;
        end
    end 
    polynomial = rdivide(central_vals(1) + x*central_vals(2),factorial(0)) + rdivide(x^2*central_vals(3),factorial(2)) + rdivide(((x^3-x)*central_vals(4)),factorial(3)) + rdivide(((x^4-x^2)*central_vals(5)),factorial(4)) + rdivide(((x^5-5*x^3+16)*central_vals(6)),factorial(5)) + rdivide(((x^6-5*x^4-4*x^2)*central_vals(7)),factorial(6));
    fprintf('Polynomial of degree %d: %s\n', n-1, polynomial);
end
