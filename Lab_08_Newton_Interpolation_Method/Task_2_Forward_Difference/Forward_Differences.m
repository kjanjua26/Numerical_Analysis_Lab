x = [0.1 0.3 0.5 0.7 0.9 1.1 1.3];
y = [0.003 0.067 0.148 0.248 0.370 0.518 0.698];

%Forward Difference Netwron
firstorder = ones(size(x,2)-1,1);
for i=1:size(x,2)-1
 firstorder(i) = (y(i+1) - y(i));   
end
firstorder
secondorder = ones(size(x,2)-2,1);
for i=1:size(x,2)-2
    secondorder(i) = (firstorder(i+1)-firstorder(i));
end
secondorder
thirdorder = ones(size(x,2)-3,1);
for i=1:size(x,2)-3
    thirdorder(i) = (secondorder(i+1)-secondorder(i));
end
thirdorder

fourthorder = ones(size(x,2)-4,1);
for i=1:size(x,2)-4
    fourthorder(i) = (thirdorder(i+1)-thirdorder(i));
end
fourthorder

fifthorder = ones(size(x,2)-5,1);
for i=1:size(x,2)-5
    fifthorder(i) = (fourthorder(i+1)-fourthorder(i));
end
fifthorder

sixthorder = ones(size(x,2)-6,1);
for i=1:size(x,2)-6
    sixthorder(i) = (fifthorder(i+1)-fifthorder(i));
end
sixthorder

P1 = @(in) y(1) + in*firstorder(1);
P2 = @(in) P1(in) + (in*(in-1)*secondorder(1)/factorial(2));
P3 = @(in) P2(in) + (in*(in-1)*(in-2)*thirdorder(1)/factorial(3));
P4 = @(in) P3(in) + (in*(in-1)*(in-2)*(in-3)*fourthorder(1)/factorial(4));
P5 = @(in) P4(in) + (in*(in-1)*(in-2)*(in-3)*(in-4)*fifthorder(1)/factorial(5));
P6 = @(in) P5(in) + (in*(in-1)*(in-2)*(in-3)*(in-4)*(in-5)*sixthorder(1)/factorial(6));


xin = 0.213;
s = (xin - x(1)) / (x(2)-x(1));
syms in;
fprintf('The value of P3(x) at 0.213 is %.4f\n',P3(s));
fprintf('The third degree polynomial is: %s\n', poly2sym(P3, in));
fprintf('The value of P6(x) at 0.213 is %.4f\n',P6(s));
