% Clear workspace, command window, and close all figures
clc; clear; close all;

% Matrix A
nNumOfVariables = 3;
nNumOfData = 10;

X = randi(20,[nNumOfData,nNumOfVariables]);
y = randi(20,[nNumOfData,1]);

%%%%%%% TODO %%%%%%%
% Compare beta from leftinv and QR decomposition
% Refer to p.38

% Beta from LeftInv
% [Q,R] = qr(X, "econ");
Beta_from_LeftInv = (X'*X)^-1 * X' * y;  

% Beta from QR decomposition
% [Q,R] = qr(X); % Full QR decomposition
% Q_t_y = Q' * y;
% Beta_from_QR =  R(1:nNumOfVariables, :)^-1 * Q_t_y(1:nNumOfVariables);

[Q,R] = qr(X, "econ"); % Full QR decomposition
Q_t_y = Q' * y;
Beta_from_QR =  R^-1 * Q_t_y;

%%%%%%%%%%%%%%%%%%%%

% Display the results
disp("X")
disp(X);
disp("y")
disp(y);

disp("Q")
disp(Q);
disp("R")
disp(R);
disp("Q*R")
disp(Q*R);

disp("Beta_from_LeftInv")
disp(Beta_from_LeftInv);

disp("Beta_from_QR")
disp(Beta_from_QR);