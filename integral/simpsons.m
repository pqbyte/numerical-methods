% Simpsons rule for approximating ∫f(x)dx.

f = @(x) 1+x.^2;

a = 1;       % Lower integral bound
b = 5;       % Upper integral bound
n = 4;       % Intervals
h = (b-a)/n; % Step size
X = a:h:b;   % Set of x-values
Y = f(X);    % Set of y-values

Iappr = h*(Y(1)+4*sum(Y(2:2:end))+2*sum(Y(3:2:end-2))+Y(end))/3;
fprintf('%s %.6f\n', 'Integral ≈', Iappr)
