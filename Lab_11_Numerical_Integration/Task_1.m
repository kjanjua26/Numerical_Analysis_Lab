p = [336, 294.4, 266.4, 260.8, 260.5, 249.6, 193.6, 195.6];
v = [0.5, 2, 3, 4, 6, 8, 10, 11]; % x

% Trapezoidal Rule 
res = 0;
h = (v(length(v)) - v(1))/length(v);
for i = 1:length(p)
    if (i == 1 || i == length(p))
        res = res + p(i);
    else
        res = res + 2*p(i);
    end
end
work = (h*res)/2;
fprintf('The work done according to trapezoidal is given by: %f\n',work); 

% Simpson's 1/3rd Rule
simp_res = p(1) + p(length(p));
even = 0;
odd = 0;
for i = 2:length(p)-1
    if(mod(i,2) == 0)
        even = even + p(i);
    else
        odd = odd + p(i);
    end
end
work = h*(simp_res + 2*odd + 4*even)/3;
fprintf('The work done according to Simpson 1/3rd rule is given by: %f\n',work); 

% Simpsons's 3/8th Rule
three_mul = 0;
otherwise_mul = 0;
for i=2:length(p)-1
    if(mod(i,3)==0)
        three_mul = three_mul + p(i);
    else
        otherwise_mul = otherwise_mul + p(i);
    end
end
work = 3*h*(simp_res+3*otherwise_mul+2*three_mul)/8;
fprintf('The work done according to Simpson 3/8t rule is given by: %f\n',work); 
