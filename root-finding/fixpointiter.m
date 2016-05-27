% Fixed point iteration to solve x²-x-1=0 => x²=x+1 => x=1+1/x.

f = @(x) 1+1/x;
n = 10; % Iterations
x = zeros(n+1, 1);

% Starting guess
x(1) = 2;

for i = 1:n
  x(i+1) = f(x(i));
end

disp('x')
fprintf('%.12f\n', x)

disp('True solution:')
xtrue = (1+sqrt(5))/2;
fprintf('%.12f\n', xtrue)
