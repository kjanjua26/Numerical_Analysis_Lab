X = [-0.1; 0.0; 0.2; 0.3];
Y = [5.3; 2.0; 3.19; 1.0];
n = length(X);
x_i = 0.1;
syms x;
table = Newton_Divided_Difference(X, Y);
coefficients = computePoly(table, X, 1);
fprintf('The polynomial of degree 1: %s\n', poly2sym(coefficients, x));
fprintf('The value at y = 0.1 is: %f\n', polyval(coefficients, 0.1));


coefficients = computePoly(table, X, 2);
fprintf('The polynomial of degree 2: %s\n', poly2sym(coefficients, x));
fprintf('The value at y = 0.1 is: %f\n', polyval(coefficients, 0.1));


coefficients = computePoly(table, X, 3);
fprintf('The polynomial of degree 3: %s\n', poly2sym(coefficients, x));
fprintf('The value at y = 0.1 is: %f\n', polyval(coefficients, 0.1));