% Trapetzoidal rule for integral of function f(x) = 1+x².

tr = @(h, y) h * (sum(y) - 0.5 * (y(1) + y(end)));
f = @(x) 1+x.^2;

% True value of integral
Itrue = 136/3;
fprintf('True value of integral = %.6f\n', Itrue)
fprintf('\n')

a = 1;       % Lower bound
b = 5;       % Upper bound
n = 4;       % Segments (increase for better result)
h = (b-a)/n; % Step size

x = a:h:b;
y = f(x);
Iappr = tr(h, y);
err = abs(Iappr-Itrue);
disp('h               integral        absolute error')
fprintf('%.6f\t%.6f\t%.6f\n', [h, Iappr, err]')
