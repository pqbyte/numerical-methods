% RK4 on y'=3e^(-x)-0.4y, y(0)=5.

f = @(x,y) 3*exp(-x)-0.4*y;

a = 0;
b = 3;
h = 1.5;
n = (b-a)/h;

X = zeros(n+1, 1);
Y = zeros(n+1, 1);
X(1) = a;
Y(1) = 5;

disp('   x               y')
fprintf('%.6f\t%.6f\n', X(1), Y(1))

for i = 1:n
  x = X(i);
  y = Y(i);
  f1 = f(x, y);
  f2 = f(x+h/2, y+h*f1/2);
  f3 = f(x+h/2, y+h*f2/2);
  f4 = f(x+h, y+h*f3);
  Y(i+1) = y+h*(f1+2*f2+2*f3+f4)/6;
  X(i+1) = x+h;
  fprintf('%.6f\t%.6f\n', X(i+1), Y(i+1))
end
