x = -3:0.01:-2;
y1 = 2.x.*cos(2.*x);
y2 = (x+1).^2;
plot(x,y1);
hold on
plot(x,y2);
hold off
xlabel('-3 < x < -2');
ylabel('y-axis values');
title('For -3 < x < -2');

x_ = -1:0.01:0;
y1_v2 = 2.*x_.*cos(2.*x_);
y2_v2 = (x_+1).^2;
plot(x_, y1_v2);
hold on
plot(x_, y2_v2);
hold off
xlabel('-1 < x < 0');
ylabel('y-axis values');
title('For -1 < x < 0');
