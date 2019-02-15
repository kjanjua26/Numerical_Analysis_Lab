function Newton_Raphson_Method(ftn)
    fprintf('Solving Newton Raphson Method\n');
    tolerance = input('Please enter tolerance value: ');
    initial_guess = input('Please Enter the value: ');
    iter = 0
    while initial_guess < 0
        fprintf('Error. Please re-enter the value.\n');
        initial_guess = input('Please Enter the value: ');
    end
    fprintf('The initial guess is: %d\n', initial_guess);
    x_ = 0;
    x_old = initial_guess;
    syms x 
    diff_ftn = matlabFunction(diff(ftn(x)));
    while(abs(x_old - x_) > tolerance)
        iter = iter + 1;
        ftn_vals = ftn(x_old);
        diff_vals = diff_ftn(x_old);
        x_new = x_old - (ftn_vals/diff_vals)
        x_ = x_old;
        x_old = x_new;
    end
    fprintf('The root is: %f\n', x_old);
    fprintf('Found in: %d iterations\n', iter);
end
