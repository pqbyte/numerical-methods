% Euler's method on y'=f(x,y), y(a)=y0.

f = @(x,y) 3*exp(-x)-0.4*y;

a = 0;       % Starting x-value
b = 3;       % Target x-value
h = 0.1;     % Step size
n = (b-a)/h; % Intervals
y = 5;       % Starting y-value
X = a:h:b;   % Set of x-values

disp('   x               y')
for i = 1:n+1
  x = X(i);
  y = y+h*f(x,y);
  fprintf('%.6f\t%.6f\n',x,y)
end
