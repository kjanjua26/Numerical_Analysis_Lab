function Fixed_Point_Method(ftn)
    fprintf('Solving Fixed Point Method\n');
    initial_guess = input('Enter initial guess: ');
    tolerance = input('Enter tolerance value: ');
    iter = 0;
    x_next = feval(ftn, initial_guess);
    if initial_guess == x_next
        fprintf('The root is: %f\n', x_next);
    end
    while(abs(x_next-initial_guess) > tolerance)
        iter = iter + 1;
        initial_guess = x_next;
        x_next = feval(ftn, initial_guess);
    end
    fprintf('The root is: %f\n', x_next);
    fprintf('Found in: %d iterations\n', iter);
end
