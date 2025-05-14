% Clear workspace, command window, and close all figures
clc; clear; close all;

% Create a random 10x4 matrix
A = randn(10, 4);

% Compute the complete QR decomposition
%%%%%%% TODO %%%%%%%
% economy sized R
[~, R] = qr(A, "econ");

% full sized R
[~, fullR] = qr(A);

% Examine R (rounded to 3 decimal places)
disp('R:');
disp(round(R, 3));
disp('fullR:');
disp(round(fullR, 3));

% Invertible submatrix (first 4x4 part of R)
Rsub = fullR(1:4,:);

% Inverses
% calculate full inverse of Rsub
Rsub_inv = inv(Rsub);
% calculate left inverse of R
Rleftinv = inv(R'*R)*R';
%%%%%%% TODO %%%%%%%

% Display both inverses
disp('Full inverse of R submatrix:');
disp(round(Rsub_inv, 3));

disp('Left inverse of R:');
disp(round(Rleftinv, 3));
