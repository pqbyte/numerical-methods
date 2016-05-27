% Euler's method on y'=3e^(-x)-0.4y, y(0)=5.

f = @(x,y) 3*exp(-x)-0.4*y;

a = 0;       % Lower bound
b = 3;       % Upper bound
h = 1.5;     % Step size
n = (b-a)/h; % Intervals

X = zeros(n, 1);
Y = zeros(n, 1);
X(1) = 0; % Starting x-value
Y(1) = 5; % Starting y-value

disp('   x               y')
fprintf('%.6f\t%.6f\n', X(1), Y(1))

for i = 1:n
  x = X(i);
  y = Y(i);
  Y(i+1) = y+h*f(x,y);
  X(i+1) = x+h;
  fprintf('%.6f\t%.6f\n', X(i+1), Y(i+1))
end
