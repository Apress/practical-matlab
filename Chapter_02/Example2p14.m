%Example2p14
%This code uses try-catch block
try
    M1=10;
    M2=20;
    Multp = CallFunctionToMultiply(M1,M2);
    fprintf("Multiplication is %f\n",Multp);
    disp("Everything was smooth")
catch
    warning('Something is wrong');
end
