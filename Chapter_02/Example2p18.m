function Example2p18(Radius,height)
%Example2p18
% This PRIMARY FUNCTION calculates
% the volume of a cylinder
radius_sq = R_square(Radius);
Result = pi*height*radius_sq;
fprintf('The volume is %f\n',Result);
end

function [r_sq]=R_square(Radius)
r_sq= Radius^2; %Sub-function
end