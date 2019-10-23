% Name of this file is CreateTables.m
% This is Example 1.17 
% This code creates a table and
% saves is as an xlsx file
Name = ['Alex';'Slim';'Bill'];
Age = [35; 40; 45];
Height = [160; 165; 170];
T = table(Name,Age,Height)
writetable(T,'MyTable.xlsx')
