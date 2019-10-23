%Example2p11
%This code calculates e
Total=1;
Eu=2.718281;
indeks=1;
tol=1; % arbitrarly defined away from Euler
while tol>1e-3
    Number=(1/(factorial(indeks)));
    Total = Total + Number;
    tol=abs(Eu- Total)
    indeks = indeks +1; 
end
fprintf('Tolerance: %d e= %d\n',tol,Total);
