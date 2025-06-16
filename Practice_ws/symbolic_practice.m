clc; clear; close all;

syms x y;

g(x) = x^2;
figure;
fplot(g(x));
title('g(x) = x^2, Plot');
xlabel('x'); ylabel('g(x)');
grid on;

f(x,y) = x^2 + y^2;
figure;
fcontour(f);
title('f(x,y) = x^2+y^2, Contour');
xlabel('x'); ylabel('y');

figure;
fsurf(f);
title('f(x,y) = x^2 + y^2, Surface');
xlabel('x'); ylabel('y');
