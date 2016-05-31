% RK4 method on y'=f(x,y), y(a)=y0.

f = @(x,y) 3*exp(-x)-0.4*y;

a = 0;       % Starting x-value
b = 3;       % Target x-value
h = 0.1;     % Step size
n = (b-a)/h; % Intervals
y = 5;       % Starting y-value
X = a:h:b;   % Set of x-values

disp('   x               y')
fprintf('%.6f\t%.6f\n', X(1), y)

for i = 1:n
  x = X(i);
  k1 = f(x, y);
  k2 = f(x+h/2, y+h*k1/2);
  k3 = f(x+h/2, y+h*k2/2);
  k4 = f(x+h, y+h*k3);
  y = y+h*(k1+2*k2+2*k3+k4)/6;
  fprintf('%.6f\t%.6f\n',X(i+1),y)
end
