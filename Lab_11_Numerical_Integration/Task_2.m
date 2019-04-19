g = 9.8;
m = 68.1;
c_d = 0.25;
t = 0:0.000001:10; % x
v = sqrt(g*m/c_d)*tanh(sqrt(g*c_d/m).*t); % y
% Trapezoidal Rule 
h = (t(length(t)) - t(1))/length(t);
res = v(1) + v(length(v));
for i = 2:length(v)-1
    res = res + 2*v(i);
end
work = (h*res)/2;
fprintf('The work done according to trapezoidal is given by: %f\n',work); 
