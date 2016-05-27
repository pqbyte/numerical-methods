% Solves a linear system using gaussian elimination.

A = [ 1 1 -1;
      0 1  3;
     -1 0 -2];

b = [9 3 2]';

disp([A b])

n = length(b);
x = zeros(n,1);

% Forward elimination
for k = 1:n-1
  for i = k+1:n
    xmult = A(i,k)/A(k,k);
    for j = k+1:n
      A(i,j) = A(i,j)-xmult*A(k,j);
    end
    b(i) = b(i)-xmult*b(k);
  end
end

% Backward substitution
x(n) = b(n)/A(n,n);
for i = n-1:-1:1
  tot = b(i);
  for j = i+1:n
    tot = tot-A(i,j)*x(j);
  end
  x(i) = tot/A(i,i);
end

disp('Solution:')
disp(x)
