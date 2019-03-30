X = [0.0, 0.2, 0.4, 0.6, 0.8, 1.0];
Y = [0.0, 7.78, 10.68, 8.37, 3.97, 0.0];
x_in = 0.90;
h = X(2) - X(1);
table = Newton_Backward_Table(X,Y);
table
Backward_Poly(table, length(X), h, x_in, X(length(X)));
