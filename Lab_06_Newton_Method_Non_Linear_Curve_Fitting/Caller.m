ftn = @(x,y) [x^2 + y^2 - 50, x*y - 25];
ftn1 = @(x,y) [4*x^2 - 20*x + (1/4)*y^2 + 8, (1/2)*x*y^2+2*x-5*y+8];
jacobian2x2 = jacobian(ftn, [x y]);
Newton_Method_System(ftn, jacobian2x2);
