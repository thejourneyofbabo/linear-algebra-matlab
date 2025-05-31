% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define a matrix X and y
X = [7; 5; 6];
y = [4; 7; 8];

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 11
% Compute the left-inverse of X
% Use 'inv()' function
X_leftinv = inv(X'*X)*X';

% Calculate beta
beta = X_leftinv * y;
%%%%%%%%%%%%%%%%%%%%
disp("beta");
disp(beta);