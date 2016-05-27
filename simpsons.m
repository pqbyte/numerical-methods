% Simpsons rule for integral of function f(x) = 1+x².

si = @(h, y) h*(y(1)+4*sum(y(2:2:end))+2*sum(y(3:2:end-2))+y(end))/3;
f = @(x) 1+x.^2;

% True value of integral
Itrue = 136/3;
fprintf('True value of integral = %.6f\n', Itrue)
fprintf('\n')

a = 1;       % Lower bound
b = 5;       % Upper bound
n = 4;       % Segments, must be even.
h = (b-a)/n; % Step size

x = a:h:b;
y = f(x);
Iappr = si(h, y);
err = abs(Iappr-Itrue);
disp('h               integral        absolute error')
fprintf('%.6f\t%.6f\t%.6f\n', [h, Iappr, err]')
