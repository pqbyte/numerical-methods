% Fixed point iteration to find roots of f(x)=0.
% Example: x²-x-1=0 ⇒ x²=x+1 ⇒ x=1+1/x ⇒ g(x)=1+1/x.

f = @(x) x^2-x-1;
g = @(x) 1+1/x;

TOL = 1e-10; % Error limit
MIT = 100;   % Maximum iterations
err = inf;   % Relative error
iter = 0;    % Current iteration
x = 2;       % Starting guess

disp('      x              f(x)       absolute error')
while err > TOL && iter < MIT
  xold = x;
  x = g(x);
  err = abs(x-xold);
  iter = iter+1;
  fprintf('%.12f\t%.12f\t%.12f\n', x, f(x), err)
end

if (iter == MIT)
  disp('Did not converge.')
else
  fprintf('%s %d %s\n','Converged. Result after',iter,'iterations.')
end
