%% Gram-Schmidt Algorithm

% Clear workspace, command window, and close all figures
clc; clear; close all;

% Initialize the matrices
A = [8 1 6; 3 5 7; 4 9 2];
Q = zeros(3);

% Perform the Gram-Schmidt process
for i = 1:size(A, 2)
    % Start with the original vector
    v = A(:, i);

    % Subtract the projections onto all previously obtained orthogonal vectors
    for j = 1:i-1
        %%%%%%% TODO %%%%%%%
        % Refer to the lecture slide 16
        % Calculate the orthogonal vector by subtracting projection of
        % previous orthogonal vector
        prev_u = Q(:, j);
        v = v - dot(prev_u, v) * prev_u / dot(prev_u, prev_u);

        %%%%%%%%%%%%%%%%%%%%
    end
    
    % Normalize the vector to make it orthogonal
    Q(:, i) = v / norm(v);
end

% Display the original and orthogonalized matrices
disp('Original Matrix A:');
disp(A);
disp('Orthogonalized Matrix Q:');
disp(Q);

% Verify orthogonality by computing dot proudct
disp('Dot products between different vectors of Q (should be close to zero):');
for i = 1:size(Q, 2)
    for j = i+1:size(Q, 2)
        fprintf('Dot product between Q(:, %d) and Q(:, %d): %f\n', i, j, dot(Q(:, i), Q(:, j)));
    end
end
