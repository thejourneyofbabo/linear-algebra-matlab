clc; clear; close all;

% create the matrix
A = randn(5,5);
A = A' * A;


%%%%%%%%%%%%%%%%% TODO %%%%%%%%%%%%%%%%%
% compute its inverse
Ai = A^-1;

% eigenvalues of A and Ai
eigvals_A = eig(A);
eigvals_Ai = eig(Ai);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% compare them (hint: sorting helps!)
disp('Eigenvalues of A:')
disp(sort(eigvals_A))

disp(' ')
disp('Eigenvalues of inv(A):')
disp(sort(eigvals_Ai))

disp(' ')
disp('Reciprocal of evals of inv(A):')
disp(sort(1./eigvals_Ai))
