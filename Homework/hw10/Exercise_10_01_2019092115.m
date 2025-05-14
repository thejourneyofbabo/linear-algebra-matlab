% Clear workspace, command window, and close all figures
clc; clear; close all;

% Matrix A
A = [1 1 1;2 3 -1; 2 3 3];

% Matrix B
B = [1 1 1;0 1 -3;0 0 4];

% Implement three elementary Matrix
% like elem = [1 0 0;0 1 0;0 0 1];
% Refer to page 9,10,17

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

% Multiply with matrix A
result = elem_3 * elem_2 * elem_1 * A;

% Check that result and B are same
disp(B);
disp(result);