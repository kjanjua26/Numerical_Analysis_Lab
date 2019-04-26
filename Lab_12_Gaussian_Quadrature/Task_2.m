function Gaussian_Quadrature()
    roots_n_2 = [0.57735026992 -0.57735026992];
    roots_n_3 = [0.77459 0.0000 -0.77459];
    roots_n_4 = [0.861136 0.3399810 -0.3399810 -0.861136];
    roots_n_5 = [0.90617 0.53846 0.00000 -0.53846 0.90617];
    coeffs_n_2 = [1 1];
    coeffs_n_3 = [0.555 0.8888 0.55555];
    coeffs_n_4 = [0.34785, 0.652145 0.652145 0.347785];
    coeffs_n_5 = [0.23692 0.47862 0.56888 0.478626 0.236926];
    p = [25 -120 90 2 0.2];
    y_2 = sum([polyval(p, roots_n_2)].*coeffs_n_2);
    y_3 = sum([polyval(p, roots_n_3)].*coeffs_n_3);
    y_4 = sum([polyval(p, roots_n_4)].*coeffs_n_4);
    y_5 = sum([polyval(p, roots_n_5)].*coeffs_n_5);
    vals = [y_2 y_3 y_4 y_5];
    disp('Using Gaussian Quadrature Rule')
    disp('n Approximation')
    for j = 1:4
        disp(['n = ', num2str(j+1, '%d'), '     ', num2str(vals(j), '%1.10f')])
end
