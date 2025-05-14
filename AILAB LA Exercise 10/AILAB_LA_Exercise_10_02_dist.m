% Clear workspace, command window, and close all figures
clc; clear; close all;

% Include the symbolic toolbox
syms a11 a12 a13 a14 a21 a22 a23 a24 a31 a32 a33 a34;

% Define a 3x4 symobolic matrix A
A = [a11 a12 a13 a14; a21 a22 a23 a24; a31 a32 a33 a34];

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 15
% Defeine the permutation matrix P32
P32 = [1 0 0;
       0 0 1;
       0 1 0];

% Calculate the product of P32 and A
product = P32 * A;
%%%%%%%%%%%%%%%%%%%%

% Display the matrix A, permutation matrix P32, and their product
disp('Matrix A:');
disp(A);
disp('Matrix P32');
disp(P32);
disp('Product of P32 and A');
disp(product);