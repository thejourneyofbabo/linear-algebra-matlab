clc; clear; close all;

% Test the function
M1 = ones(6, 4);
M2 = reshape(0:23, [6, 4]);

C = addMatrices(M1, M2);
disp(C);

%%%%%%%%%%% ToDo %%%%%%%%%%%
% input: two matrix with same size
% output: summation result
function C = addMatrices(A, B)

  % Check that both matrices have the same size

  % Summation
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%