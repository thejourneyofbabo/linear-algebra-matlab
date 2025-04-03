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
  [rows_A, cols_A] = size(A);
  %[rows_B, cols_B] = size(B);
  if ~isequal(size(A), size(B))
      error('Please put same size matricies');
  end
  % Summation
  
  C = zeros(rows_A, cols_A);

  for r = 1:rows_A
      for c = 1:cols_A
          C(r,c) = A(r,c) + B(r,c);
      end
  end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%