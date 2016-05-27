% Newton-Raphsons method.

f = @(x) (x-1)^2;
fp = @(x) 2*(x-1);

TOL = 1e-10;
err = inf;
iter = 1;

% Starting guess
x = 1.00001;

disp('x               f(x)            relative error')
while err > TOL & iter <= 20
  dx = -f(x)/fp(x);
  x = x+dx;
  err = abs(dx/x);
  fprintf('%.12f\t%.12f\t%.12f\n', [x, f(x), err])
  iter = iter+1;
end

disp(['Iterations: ' num2str(iter)])
