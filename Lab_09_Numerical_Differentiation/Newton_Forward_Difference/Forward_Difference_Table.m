function table = Forward_Difference_Table(X,Y)
n = length(X);
table = zeros(n,n); 
table(:,1) = Y';
for i=2:n,
  for j=1:n-i+1,
      table(j,i) = table(j+1,i-1) - table(j,i-1);
  end
end
