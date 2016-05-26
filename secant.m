% Secant method.

f = @(x) (x-1)^2;

TOL = 1e-10;
err = inf;
iter = 1;

% Starting guesses
x0 = 1.00001;
x1 = 1.00002;

disp('x               f(x)            absolute error')
while err > TOL && iter < 100
  dx = -f(x1)*(x1-x0)/(f(x1)-f(x0));
  x0 = x1;
  x1 = x1+dx;
  err = abs(x1-x0);
  iter = iter+1;
  fprintf('%.12f\t%.12f\t%.12f\n', [x1, f(x1), err])
end
x = x1;

disp(['Iterations: ' num2str(iter)])
