% Newton's method to find roots of f(x)=0.

f = @(x) (x-1)^2;
fp = @(x) 2*(x-1);

TOL = 1e-10; % Error limit
MIT = 100;   % Maximum iterations
err = inf;   % Relative error
iter = 0;    % Current iteration
x = 1.01;    % Starting guess

disp('      x              f(x)       relative error')
while err > TOL && iter < MIT
  h = -f(x)/fp(x);
  x = x+h;
  err = abs(h/x);
  fprintf('%.12f\t%.12f\t%.12f\n', x, f(x), err)
  iter = iter+1;
end

if (iter == MIT)
  disp('Did not converge.')
else
  fprintf('%s %d %s\n','Converged. Result after',iter,'iterations.')
end
