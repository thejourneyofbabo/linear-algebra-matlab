% Clear workspace, command window, and close all figures
clc; clear; close all;
% Define the matrix A
A = [-3 -3 0; 3 -2 3; 0 1 2];
% Perform eigen decomposition
[V, D] = eig(A);
% Extract the eigenvalues from the diagonal matrix D
eigenvalues = diag(D);
% Display the eigenvalues as a column vector
disp('Eigenvalues:');
disp(eigenvalues);