% Clear workspace, command window, and close all figures
clc; clear; close all;

% Matrix A
A = [1; -1];

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 24
[Q,R] = qr(A); % Full QR decomposition
[Q_econ,R_econ] = qr(A, "econ"); % Economy-mode QR decomposition, Q is same size as matrix A
%%%%%%%%%%%%%%%%%%%%

% Scale to make integer matrix
Q = Q*sqrt(2);
Q_econ = Q_econ*sqrt(2);

% Display the results
disp("Q")
disp(Q);
disp("Q_econ")
disp(Q_econ);
