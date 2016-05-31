% Secant method to find roots of f(x)=0.

f = @(x) (x-1)^2;

TOL = 1e-10;  % Error limit
MIT = 100;    % Maximum iterations
err = inf;    % Absolute error
iter = 0;     % Current iteration
x0 = 1.01;    % Starting guess 1
x1 = 1.02;    % Starting guess 2

disp('       x             f(x)       absolute error')
while err > TOL && iter < 100
  h = -f(x1)*(x1-x0)/(f(x1)-f(x0));
  x0 = x1;
  x1 = x1+h;
  err = abs(x1-x0);
  iter = iter+1;
  fprintf('%.12f\t%.12f\t%.12f\n', x1, f(x1), err)
end

if (iter == MIT)
  disp('Did not converge.')
else
  fprintf('%s %d %s\n','Converged. Result after',iter,'iterations.')
end
