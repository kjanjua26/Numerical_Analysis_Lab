syms x
f = cos(x);
t2_cos = taylor(f, x, 'Order', 2);
t4_cos = taylor(f, x, 'Order', 4);
t6_cos = taylor(f, x, 'Order', 6);
fplot([f t2_cos t4_cos t6_cos]);
grid on
title('Taylor Series of cos(x)');
xlabel('x axis');
ylabel('y axis');
