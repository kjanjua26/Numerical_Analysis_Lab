% Three Point Central Difference Formula
X = [0.5, 0.6, 0.7];
Y = [0.4794, 0.5646, 0.6442];
h = X(2) - X(1);
x_i = 0.6;
index = find(X == x_i);
p = (Y(index+1)+Y(index-1)-2*Y(index))/(h*h);
fprintf('The value of velocity at x = 0.6 using three point central formula is: %f\n', p);
% Error Bound
syms e(x);
e(x) = sin(x);
f4 = diff(e, 4);
range = X(1):0.1:X(length(X));
max_val = max(f4(range));
error = (h^2)*max_val/12;
fprintf('The error bound is given as %f\n', error);
