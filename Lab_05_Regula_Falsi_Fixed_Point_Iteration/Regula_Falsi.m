function Regular_Falsi(ftn)
    fprintf('Solving Regula Falsi Method\n');
    lower_guess = input('Please enter lower guess: ');
    upper_guess = input('Please enter the upper guess: ');
    tolerance = input('Please enter tolerance value: ');
    iter = 0;
    x_ = 0;
    prev = 0;
    while 1
        iter = iter + 1;
        lower_vals = ftn(lower_guess);
        upper_vals = ftn(upper_guess);
        x_ = (upper_guess*lower_vals-lower_guess*upper_vals)/(lower_vals-upper_vals);
        new_vals = ftn(x_);
        estimated_error = abs(x_ - prev)/x_;
        if(estimated_error < tolerance)
            break;
        elseif (~isequal(sign(lower_vals), sign(new_vals)))
            upper_guess = x_;
        elseif (~isequal(sign(upper_vals), sign(new_vals)))
         lower_guess = upper_guess;
         upper_guess = x_;
        end
        prev = x_;
    end
    fprintf('The root is: %f\n', x_);
    fprintf('Found in: %d\n', iter);
