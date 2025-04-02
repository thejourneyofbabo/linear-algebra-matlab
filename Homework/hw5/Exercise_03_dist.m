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
if k == 
    mulMatrix01 = matrixMultiplication();
else
    error('Write the reason of error');
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
            mulMatrix(rowi, coli) = dot(inputMatrix01(xxxx, :), inputMatrix02(:, xxxx));
        end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%