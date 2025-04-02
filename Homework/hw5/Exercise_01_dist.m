clc; clear; close all;

%%%%%%%%%%% ToDo %%%%%%%%%%%
% Create the matrix

% Extract submatrix
% Generate function for extract submatrix

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Visualize the matrices as maps
figure;

% Original matrix visualization
subplot(1, 2, 1);
imagesc(C, [0, max(C(:))]); % Match color scaling with the Python version
colormap('gray');
axis equal tight;
title('Original matrix');
hold on;
% White dashed lines
plot([5.5, 5.5], [0.5, 10.5], 'w--');
plot([0.5, 10.5], [5.5, 5.5], 'w--');
hold off;
% Adding text labels
for i = 1:size(C, 1)
    for j = 1:size(C, 2)
        text(j, i, num2str(C(i, j)), 'Color', [0.8, 0.8, 0.8], 'HorizontalAlignment', 'center');
    end
end

% Submatrix visualization
subplot(1, 2, 2);
imagesc(C_1, [0, max(C(:))]); % Ensure consistent color scaling
colormap('gray');
axis equal tight;
title('Submatrix');
% Adding text labels for the submatrix
for i = 1:size(C_1, 1)
    for j = 1:size(C_1, 2)
        text(j, i, num2str(C_1(i, j)), 'Color', [0.8, 0.8, 0.8], 'HorizontalAlignment', 'center');
    end
end

%%%%%%%%%%% ToDo %%%%%%%%%%%
% write code here
% input : matrix, start row index, end row index, start col index, end col index
% Output : submatrix
function sub_matrix = GenSubmatrix()

end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%