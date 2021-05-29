% file 'midpoint_v.m'
% calculates a midpoint rule aproximation of
% the integral from 0 to pi/2 of f(x) =  exp (x^2) cos(x)
% -- vectorized code
% set limits of integration, number of terms and delta x
a = 0
b = pi/2
n = 100
dx = (b-a)/n
% define function to integrate
function y = f(x)
  y = exp(x .^ 2) .* cos(x);
end
% create vector of midpoints
m = [a+dx/2:dx:b-dx/2];
% create vector of function value at midpoints
M = f(m);
% midpoint aproximation to the integral
aprox = dx * sum(M)