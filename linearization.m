syms x [2 1] matrix
syms f(x) [2 1] matrix
syms g(x) [2 1] matrix
f = [x(1)*2 + 2*x(2)*2 + 4*x(1)*x(2) + x(2); x(2)*2];
g = [-2*(1+x(2)^2); 1+x(2)^2];
dx = f + g*u;

% D0 = span{g}
D0 = g;
%D1 = span{g, adfg}
adfg = diff(g, x)*f - diff(f, x)*g
D1 = [g, adfg]
C = det(D1)