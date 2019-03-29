X = [0.0, 0.2, 0.4, 0.6, 0.8, 1.0];
Y = [0.0000000, 7.7800000, 10.6800000, 8.3700000, 3.9700000, 0.000000];

diffTable = Forward_Difference_Table(X,Y);
diffTable
Forward_Poly(diffTable(1,:), X(1), X(2)-X(1), 5, 0.25);
