% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define the 1x3 vector
vector = [1 2 4];

% Define the 2x3 matrices
matrix1 = [1, 2, 4; 3, 6, 12];
matrix2 = [1, 2, 4; 3.1, 6, 12];

%%%%%%% TODO %%%%%%%
% Define the 3x3 identity matrix and 3x3 zero matrix
% Refer to the lecture slide 80
% Remind : Identity matrix & zero matrix
identityMatrix = % xxx(x);
zeroMatrix = % xxx(x,x);

% Calculate the ranks
% Use 'rank(vector/matrix)' function
vector_rank = % xxx(x);
matrix1_rank = % xxx(x);
matrix2_rank = % xxx(x);
identity_rank = % xxx(x);
zero_rank = % xxx(x);
%%%%%%%%%%%%%%%%%%%%

% Calculate and display the rank of each
disp('Rank of the 1x3 vector: ');
disp(vector_rank);
disp('Rank of the first 2x3 matrix: ');
disp(matrix1_rank);
disp('Rank of the second 2x3 matrix: ');
disp(matrix2_rank);
disp('Rank of the 3x3 identity matrix: ');
disp(identity_rank);
disp('Rank of the 3x3 zero matrix: ');
disp(zero_rank);
