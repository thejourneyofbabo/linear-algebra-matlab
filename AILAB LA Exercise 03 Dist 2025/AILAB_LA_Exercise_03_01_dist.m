clc; clear; close all;

% Define two 2D vectors form of 'v = [a; b]'
v1 = [1; 2]; % example vector 1
v2 = [-2; 1]; % example vector 2

% Define weights
alpha = 0.3;
beta = 0.5;

%%%%%%% TODO %%%%%%
% Compute the linear weighted combination
% Write form of 'resultant_vector = weight1*vector1 + wegiht2*vector2'
resultant_vector = alpha * v1 + beta * v2;
%%%%%%%%%%%%%%%%%%%

% Visualization
figure;
hold on;

% Plot vectors
quiver(0, 0, v1(1), v1(2), 'Color', 'b', 'LineWidth', 2, 'MaxHeadSize', 1, 'AutoScale', 'off');
quiver(0, 0, v2(1), v2(2), 'Color', 'r', 'LineWidth', 2, 'MaxHeadSize', 1, 'AutoScale', 'off');
quiver(0, 0, resultant_vector(1), resultant_vector(2), 'Color', 'g', 'LineWidth', 2, 'MaxHeadSize', 1, 'AutoScale', 'off');
% Set axis equal, xlim, and ylim
axis equal;
xlim([-3, 3]);
ylim([-1, 3]);
% Add labels
xlabel('X-axis');
ylabel('Y-axis');
% Add legend
legend('Vector v1', 'Vector v2', 'Resultant Vector');
% Set title
title('Linear Weighted Combination of Vectors');
% Show grid
grid on;

hold off;

