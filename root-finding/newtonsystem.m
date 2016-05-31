% Newton's method on system of equations.
% f(x)=0, x=[x1 x2].

f = @(x) [x(1)+x(2)^2;
        -1+x(1)^2+4*x(2)];

% Jacobian of f
J = @(x) [1, 2*x(2);
          2*x(1), 4];

TOL = 1e-10; % Error limit
MIT = 100;   % Maximum iterations
err = inf;   % Max norm error
iter = 0;    % Current iteration
x = [0 1]';  % Starting guesses

disp('      x1              x2             error')
while err > TOL && iter < MIT
  h = -J(x)\f(x);
  x = x+h;
  err = norm(h,inf);
  iter = iter+1;
  fprintf('%.12f\t%.12f\t%.12f\n', x(1), x(2), err)
end

if (iter == MIT)
  disp('Did not converge.')
else
  fprintf('%s %d %s\n','Converged. Result after',iter,'iterations.')
end
