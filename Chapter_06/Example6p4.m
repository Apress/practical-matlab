%Example6p4
%This code find indexes in a matrix
Matrx =[32,98,17,71,67;...
        39,71,65,28,17;...
        77,49,71,68,71];
Key = 71;
Indexing = find(Matrx==Key);
disp('Its indexes are: ')
disp(Indexing);
