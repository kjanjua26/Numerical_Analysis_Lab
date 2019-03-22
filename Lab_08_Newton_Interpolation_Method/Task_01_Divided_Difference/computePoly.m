function C = computePoly(table, X, degree)
    degree = degree + 1;
    C = table(degree, degree);
    for k = (degree-1):-1:1,
      C = conv(C,poly(X(k)));
      m = length(C);
      C(m) = C(m) + table(k,k);
    end
end