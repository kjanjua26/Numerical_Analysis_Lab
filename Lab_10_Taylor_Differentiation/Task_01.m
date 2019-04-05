T = [0, 25, 50, 75, 100, 125];
X = [0, 32, 58, 78, 92, 100];
% Two Point Forward Formula
h = T(2) - T(1);
x_i = 25;
index = find(T == x_i);
p = (X(index+1)-X(index))/h;
fprintf('The value of velocity at t = 25 using two point forward formula is: %f\n', p);
% Three Point Central Formula
x_i = 50;
index = find(T == x_i);
p = (X(index+1)-X(index-1))/(2*h);
fprintf('The value of velocity at t = 50 using three point central formula is: %f\n', p);
% Three Point Backward
x_i = 125;
index = find(T == x_i);
p = (3*X(index)+X(index-2)-4*X(index-1))/(2*h);
fprintf('The value of velocity at t = 125 using three point backward formula is: %f\n', p);
