function [ Result ] = Example2p15( Number )
%Example2p15
%This code accepts ant input
Checking_if_numeric = isnumeric (Number );
if Checking_if_numeric == 0 || nargin ~=1
    error('Just A NUMBER');
end
Result = Number^2;
end
