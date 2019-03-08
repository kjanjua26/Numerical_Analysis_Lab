function Newton_Method_System(ftn, jacobian2x2)
    syms x y;
    fprintf('Solving Newton Raphson Method\n');
    tolerance = input('Please enter tolerance value: ');
    x_guess = input('Please enter x value guess: ');
    y_guess = input('Please enter y value guess: ');
    initials = [x_guess y_guess];
    iterations = 0;
    while 1
        ftn_sol = subs(ftn, [x y], initials);
        jacob_sol = subs(jacobian2x2, [x y], initials);
        initials = initials - (inv(jacob_sol)*ftn_sol.').';
        iterations = iterations + 1;
        ftn_sol = subs(ftn, [x y], initials);
        if (abs(ftn_sol(1)) < tolerance && abs(ftn_sol(2)) < tolerance)
            break;
        end
    end
    fprintf('The first root is: %f\n', initials(1));
    fprintf('The second root is: %f\n', initials(2));
    fprintf('Found in: %d iterations\n', iterations);
end
