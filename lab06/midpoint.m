% file 'midpoint.m'
% calculates a midpoint rule aproximation of
% the integral from 0 to pi/2 of f(x) =  exp (x^2) cos(x)
% -- traditional loop code
% set limits of integration, number of terms and delta x
a = 0
b = pi/2
n = 100
dx = (b-a)/n
% define function to integrate
function y = f(x)
  y = exp(x .^ 2) .* cos(x);
end
msum = 0;
% initialize sum
m1 = a + dx/2; % first mid point
%loop to create sum of function values
for i = 1:n
  m = m1+ (i-1)*dx; % calculate midpoint
  msum = msum + f(m); % add to midpoint sum
end
% midpoint aproximation to the integral
aprox = msum * dx