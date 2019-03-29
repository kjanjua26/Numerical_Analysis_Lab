x = [0.1, 0.3, 0.5, 0.7, 0.9, 1.1, 1.3];
y = [0.003, 0.067, 0.148, 0.248, 0.370, 0.518, 0.698];
table = Stirling_Table(x,y);
Stirling_Central_Difference(table, 7);
