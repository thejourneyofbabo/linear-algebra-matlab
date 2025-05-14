% Clear workspace, command window, and close all figures
clc; clear; close all;

% Generate a 5x5 random matrix and compute the QR decomposition
random_matrix = randn(5, 5);

%%%%%%% TODO %%%%%%%
% Generate Q matrix
[Q, R] = qr(random_matrix);

% Get Transpose of Q & Inverse of Q
Qt = Q';  % Transpose of Q
Qi = inv(Q);  % Inverse of Q

% disp QTQ, QQT, QIQ, QQI

% QtQ
disp("QtQ")
disp(round(Qt*Q, 8));
disp(' ');

% QQt
disp("QQt")
disp(round(Q*Qt, 8));
disp(' ');

% QiQ
disp("QiQ")
disp(round(Qi*Q, 8));
disp(' ');

% QQi
disp("QQi")
disp(round(Q*Qi, 8));
%%%%%%% TODO %%%%%%%