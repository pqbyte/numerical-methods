% Finite difference method on y''+y'sqrt(x)=(6-y)x
% y(0)=1; y(4)=-1

a = 0;            % Starting x-value
b = 4;            % Ending x-value
ya = 1;           % Starting y-value
yb = -1;          % Ending y-value
n = 20;           % Intervals
h = (b-a)/n;      % Step size
N = (n+1)-2;      % Unknowns
X = (a:h:b)';     % Set of x-values
x = X(2:N+1);     % Values used for solving y

% Functions from discretization of ODE
f1 = @(x) 1-h*sqrt(x)/2;
f2 = @(x) -(2-h^2*x);
f3 = @(x) 1+h*sqrt(x)/2;
g = @(x) 6*h^2*x;

% Fill tridiagonal matrix
A = zeros(N);
for i = 1:N
  A(i,i) = f2(x(i));     % diagonal
end
for i = 1:N-1
  A(i,i+1) = f3(x(i));   % super-diagonal
  A(i+1,i) = f1(x(i+1)); % sub-diagonal
end

% Right side of equality
c = g(x);
c(1) = c(1)-f1(x(1))*ya;
c(N) = c(N)-f3(x(N))*yb;

% Solution
y = A\c;
Y = [ya; y; yb];

disp('    x               y')
fprintf('%.6f\t%.6f\n', X, Y)
