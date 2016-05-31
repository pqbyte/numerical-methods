% Euler's method on system of equations.
% y'=f(x,y), y=[y1 y2], y(a)=[y01 y02].

f = @(x,y) [y(2)^2-2*y(1);
            y(1)-y(2)-x*y(2)^2];

a = 0;       % Starting x-value
b = 3;       % Target x-value
h = 0.1;     % Step size
n = (b-a)/h; % Intervals
y = [1 0]';  % Starting y-values
X = a:h:b;   % Set of x-values

disp('    x              y1              y2')
fprintf('%.6f\t%.6f\t%.6f\n',X(1),y)

for i = 1:n
  x = X(i);
  y = y+h*f(x,y);
  fprintf('%.6f\t%.6f\t%.6f\n',X(i+1),y)
end
