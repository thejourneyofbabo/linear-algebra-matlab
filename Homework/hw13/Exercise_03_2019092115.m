clc; clear; close all;

% Create the Lambda matrix with positive values
Lambda = diag(rand(4,1) * 5);
randnMat = randn(4,4);

%%%%%%%%%%%%%%%%% TODO %%%%%%%%%%%%%%%%%
% create Q
[Q,R] = qr(randnMat);

% reconstruct to a matrix
A = Q'*Lambda*Q;

% the matrix minus its transpose should be zeros (within precision error)
% result = A-A';
result = round(A-A', 5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(result);

% sort(diag(Lambda)) and sort(eig(A)) disp same result
% print sorted diagonal of Lambda
disp('Sorted diagonal of Lambda:')
disp(sort(diag(Lambda)))

% print sorted eigenvalues of A
disp('Sorted eigenvalues of A:')
disp(sort(eig(A)))
