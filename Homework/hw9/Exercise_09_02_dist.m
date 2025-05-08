% Clear workspace, command window, and close all figures
clc; clear; close all;

% Create a random 10x4 matrix
A = randn(10, 4);

% Compute the complete QR decomposition
%%%%%%% TODO %%%%%%%
% economy sized R
[~, R] = ;

% full sized R
[~, fullR] = ;

% Examine R (rounded to 3 decimal places)
disp('R:');
disp(round(R, 3));
disp('fullR:');
disp(round(fullR, 3));

% Invertible submatrix (first 4x4 part of R)
Rsub = ;

% Inverses
% calculate full inverse of Rsub
Rsub_inv = ;
% calculate left inverse of R
Rleftinv = ;
%%%%%%% TODO %%%%%%%

% Display both inverses
disp('Full inverse of R submatrix:');
disp(round(Rsub_inv, 3));

disp('Left inverse of R:');
disp(round(Rleftinv, 3));
