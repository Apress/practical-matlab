%Example6p3
%This code sorts rows and columns
A=randi(100,3,5);
SortColumn=sort(A,1);
SortRow=sort(A,2);
disp('Original Matrix');
disp(A);
disp('Column Sorted');
disp(SortColumn)
disp('Row Sorted');
disp(SortRow)
