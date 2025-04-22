% Clear workspace, command window, and close all figures
clc; clear; close all;

% Assume that input value is [a,b;c,d] (2x2 matrix)
% then make a function that return a inverse matrix
% NOTE: Do not use inverse function in MATLAB

% input1
a1 = 2;
b1 = 1;
c1 = 6;
d1 = 8;

% input2
a2 = 4;
b2 = 10;
c2 = 2;
d2 = 5;

% Write here (start)
% Create error when inverse matrix does not exist
function inverse_matrix = handMadeInverseMatrix(a, b, c, d)
    % Compute the determinant
    
    % Check error
    if 
        error('Matrix is not invertible');
    end
    
    % Compute the inverse manually

end
% Write here (end)

% Call the function and store the inverse matrix
% Display the result
inv1 = handMadeInverseMatrix(a1,b1,c1,d1);
disp('Inverse matrix1:');
disp(inv1);
inv2 = handMadeInverseMatrix(a2,b2,c2,d2);