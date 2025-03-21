clc; clear; close all;
% Define basis vectors
i = [1; 0; 0];
j = [0; 1; 0];
k = [0; 0; 1];

% Define an arbitrary 3D vector v
v = [3; 2; 5];

% Visualization
figure;
hold on;
grid on;
axis equal;

% Draw the basis vectors
quiver3(0, 0, 0, i(1), i(2), i(3), 'r', 'LineWidth', 1, 'AutoScale', 'off', 'MaxHeadSize', 1, 'DisplayName', 'i');
quiver3(0, 0, 0, j(1), j(2), j(3), 'g', 'LineWidth', 1, 'AutoScale', 'off', 'MaxHeadSize', 1, 'DisplayName', 'j');
quiver3(0, 0, 0, k(1), k(2), k(3), 'b', 'LineWidth', 1, 'AutoScale', 'off', 'MaxHeadSize', 1, 'DisplayName', 'k');

%%%%%%% TODO %%%%%%
% Draw the vector v.
% Draw arrow by using function 'quiver3'
% xxxxxxx(0, 0, 0, x(x), x(x), x(x), 'm', 'LineWidth', 1, 'AutoScale', 'off', 'MaxHeadSize', 1, 'DisplayName', 'v');
%%%%%%%%%%%%%%%%%%%

% Visualize each multiplication of basis vector
plot3([0 v(1)], [0 0], [0 0], 'k--', 'LineWidth', 1); 
plot3([v(1) v(1)], [0 v(2)], [0 0], 'k--', 'LineWidth', 1); 
plot3([v(1) v(1)], [v(2) v(2)], [0 v(3)], 'k--', 'LineWidth', 1); 

% Visualize the values of multiplication
text(v(1)/2, 0, 0, sprintf('%0.1f \\iti', v(1)), 'VerticalAlignment', 'bottom', 'FontSize', 15);
text(v(1), v(2)/2, 0, sprintf('%0.1f \\itj', v(2)), 'VerticalAlignment', 'bottom','FontSize', 15);
text(v(1), v(2), v(3)/2, sprintf('%0.1f \\itk', v(3)), 'VerticalAlignment', 'bottom', 'FontSize', 15);

xlabel('X');
ylabel('Y');
zlabel('Z');
title('Representation of a Vector with Basis');
legend('i','j','k','v','Location', 'northeastoutside');
view(45, 45); % Adjust the 3D view angle
hold off;

