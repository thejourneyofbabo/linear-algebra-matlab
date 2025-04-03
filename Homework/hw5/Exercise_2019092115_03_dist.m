clc; clear; close all;
% Generate two matrices
m = 4;
n = 6;
k = 4;
input_matrix_1 = randn(m, n);
input_matrix_2 = randn(n, m);

% Build up the product matrix element-wise
% write code here

%%%%%%%%%%% ToDo %%%%%%%%%%%
if k == size(input_matrix_1, 1) && size(input_matrix_2, 2)
    mulMatrix01 = matrixMultiplication(input_matrix_1, input_matrix_2, m);
else
    error('Please input valid Matrix');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Implement matrix multiplication directly
mulMatrix02 = input_matrix_1 * input_matrix_2;

disp(mulMatrix01);
disp(mulMatrix02);

% write code here
% input : two matrix
% output : one matrix (Result of multiplication)
% Check if the two MATRIX is available for dot product

%%%%%%%%%%% TODO %%%%%%%%%%%
function mulMatrix = matrixMultiplication(inputMatrix01, inputMatrix02, m)
    for rowi = 1:m
        for coli = 1:m
            mulMatrix(rowi, coli) = dot(inputMatrix01(rowi, :), inputMatrix02(:, coli));
        end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%