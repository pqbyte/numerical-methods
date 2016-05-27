% Finite difference method on y''+y'sqrt(x)=(6-y)x
% y(0)=1; y(4)=-1

% Known values
a = 0;
b = 4;
ya = 1;
yb = -1;

% Properties of the problem
N = 100;       % # of intervals
h = (b-a)/N;
n = (N+1)-2;   % # of unknowns
x = h*(1:n)';

% Function
f1 = @(x) 1-h*sqrt(x)/2;
f2 = @(x) -(2-h^2*x);
f3 = @(x) 1+h*sqrt(x)/2;
g = @(x) 6*h^2*x;

% Fill tridiagonal matrix
A = zeros(n);
for i = 1:n
  A(i, i) = f2(x(i));     % diagonal
end
for i = 1:n-1
  A(i, i+1) = f3(x(i));   % super-diagonal
  A(i+1, i) = f1(x(i+1)); % sub-diagonal
end

% Right side
c = g(x);
c(1) = c(1)-f1(x(1))*ya;
c(n) = c(n)-f3(x(n))*yb;

% Solution
y = A\c;

% Plot
X = [a; x; b];
Y = [ya; y; yb];
plot(X, Y)

disp('    min-y    max-y')
disp([min(y)    max(y)])
