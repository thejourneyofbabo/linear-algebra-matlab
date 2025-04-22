% Clear workspace, command window, and close all figures
clc; clear; close all;

% Create a 4x4 original matrix with integer elements
originalMatrix = [-5,4,-1,-7;
                  -10,-4,-2,0;
                  -8,9,6,-1;
                  7,-10,6,3];

% Create a 4x4 grid matrix where elements are (-1)^(i+j)
[i, j] = meshgrid(1:4, 1:4);
gridMatrix = (-1).^(i+j);

% Compute the minor matrix
minorMatrix = zeros(4);
for row = 1:4
    for col = 1:4
        subMatrix = originalMatrix;
        subMatrix(row, :) = [];
        subMatrix(:, col) = [];
        minorMatrix(row, col) = det(subMatrix);
    end
end

% Write here (start)
% Refer to the lecture slide 43
% Compute the cofactors matrix
% Use '.*' function to compute the cofactorsMatrix
cofactorsMatrix = ;

% Check if the matrix is invertible
determinant = det(originalMatrix);
if determinant == 0
    error('The original matrix is singular and does not have an inverse.');
end

% Compute the adjugate matrix and inverse matrix of the original matrix
% Use 'transpose(matrix)' to compute the adjugate matrix
% Use adjugateMatrix to compute inverse matrix
adjugateMatrix = ;
inverseMatrix = ;

% Compute the product of the original matrix and its inverse
identityMatrix = ;
% Write here (end)

% Visualize all matrices
visualizeMatrix(originalMatrix, 'Original Matrix');
visualizeMatrix(minorMatrix, 'Minors Matrix');
visualizeMatrix(gridMatrix, 'Grid Matrix (-1)^(i+j)');
visualizeMatrix(cofactorsMatrix, 'Cofactors Matrix');
visualizeMatrix(adjugateMatrix, 'Adjugate Matrix');
visualizeMatrix(inverseMatrix, 'Inverse Matrix');
visualizeMatrix(identityMatrix, 'Product of Original and Inverse Matrix');

% Function definition : visualize matrix
function visualizeMatrix(matrix, titleStr)
    figure;
    imagesc(matrix);
    colorbar;
    title(titleStr);
    colormap jet;
    axis square;
    % Add text annotations for each element
    for i = 1:size(matrix, 1)
        for j = 1:size(matrix, 2)
            text(j, i, num2str(matrix(i, j), '%.2f'), ...
                'HorizontalAlignment', 'center', ...
                'Color', 'white', 'FontSize', 10);
        end
    end
end