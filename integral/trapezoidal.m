% Trapetzoidal rule for approximating ∫f(x)dx.

f = @(x) 1+x.^2;

a = 1;       % Lower integral bound
b = 5;       % Upper integral bound
n = 4;       % Intervals
h = (b-a)/n; % Step size
X = a:h:b;   % Set of x-values
Y = f(X);    % Set of y-values

Iappr = h*(sum(Y)-0.5*(Y(1)+Y(end)));
fprintf('%s %.6f\n', 'Integral ≈', Iappr)
