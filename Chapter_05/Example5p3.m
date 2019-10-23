%Example5p3
%This code spins coin
Times=input('Number of times to flip the coin?\n');
[H,T,Sequence]=FlipCoin(Times)
function [H,T,Sequence]=FlipCoin(Times)
rng('shuffle')
n=1; H=0; T=0;
Sequence = zeros(1,n);
while n <= Times
      Result = randi(2,1);
      if Result == 1
          H=H+1;
          Cond = 'H';
      else
          T=T+1;
          Cond = 'T';
      end 
      Sequence(n) = Cond;
      n=n+1;
end
Sequence = char(Sequence);
end
