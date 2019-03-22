function D = Newton_Divided_Difference(X, Y)
    n = length(X);
    D = zeros(n,n);
    D(:,1) = Y';
    for j=2:n,
      for k=j:n,
          D(k,j) = (D(k,j-1)-D(k-1,j-1))/(X(k)-X(k-j+1));
      end
    end
end
