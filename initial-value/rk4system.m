% RK4 on system of equations.
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
  k1 = f(x,y);
  k2 = f(x+h/2, y+h*k1/2);
  k3 = f(x+h/2, y+h*k2/2);
  k4 = f(x+h, y+h*k3);
  y = y+h*(k1+2*k2+2*k3+k4)/6;
  fprintf('%.6f\t%.6f\t%.6f\n',X(i+1),y)
end
