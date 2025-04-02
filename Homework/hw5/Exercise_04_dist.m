clc; clear; close all;
% Test the function with a symmetric matrix
% sym matrix
% S = [1, 2, 3; 2, 5, 6; 3, 6, 9];

% not sym matrix
S = [1, 1, 2; 2, 5, 5; 7, 6, 9];

isSym = isMatrixSymmetric(S);
disp(['Is the matrix symmetric? ', num2str(isSym)]);

%%%%%%%%%%% ToDo %%%%%%%%%%%
function isSymmetric = isMatrixSymmetric(S)
  % Difference between matrix and its transpose

  % Check whether sum of squared errors (SSE) is smaller than a threshold

  % Output TRUE if sse is tiny; FALSE means the matrix is asymmetric

end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%