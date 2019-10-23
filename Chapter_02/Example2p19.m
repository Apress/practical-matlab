function [Output] = Example2p19(x,y)
%This is Example2p19
%This function has an anonymous func. 
Multip = @(x,y) x*y;
Output =Multip(x,y);
