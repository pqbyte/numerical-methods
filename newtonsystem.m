% Multivariable Newton's method.

f = @(x) [x(1)+x(2)^2;
        -1+x(1)^2+4*x(2)];

% Jacobian of f
J = @(x) [1, 2*x(2);
          2*x(1), 4];

TOL = 1e-14;
h = inf;
iter = 1;

% Starting guesses
x = [-0.062 0.25]';

disp('x               y               error')
while (norm(h) > TOL)
  h = -J(x)\f(x);
  x = x+h;
  fprintf('%.12f\t%.12f\t%.12f\n', [x(1), x(2), norm(h)])
  iter = iter+1;
end

disp(['Iterations: ' num2str(iter)])
