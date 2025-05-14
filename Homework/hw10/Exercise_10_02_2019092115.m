% Clear workspace, command window, and close all figures
clc; clear; close all;

% Matrix A
A = [1 1 1;2 3 -1; 2 3 3];

% Matrix B
U = [1 1 1;0 1 -3;0 0 4];

% Implement three elementary Matrix
% like elem = [1 0 0;0 1 0;0 0 1];
% r_2 -> r_2 – 2*r_1
elem_1 = [1  0  0;
         -2  1  0;
          0  0  1];
% r_3 -> r_3 – 2*r_1
elem_2 = [1  0  0;
          0  1  0;
         -2  0  1];
% r_3 -> r_3 – r_2
elem_3 = [1  0  0;
          0  1  0;
          0 -1  1];

% Get inverse matrix
elem_1_inv = inv(elem_1);
elem_2_inv = inv(elem_2);
elem_3_inv = inv(elem_3);

% Get L matrix
L = elem_1_inv * elem_2_inv * elem_3_inv;

% Display L & U
disp(L);
disp(U);
% Check that L * U is same with A
disp("--");
disp(L * U);
disp(A);
