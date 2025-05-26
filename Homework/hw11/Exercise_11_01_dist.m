% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define a matrix X and y
X = [7; 5; 6];
y = [4; 7; 8];

%%%%%%% GLM Solution via Geometric Interpretation %%%%%%%
% Refer to the lecture slide 18
% Compute the left-inverse of X using inv()
X_leftinv = ;

% Calculate least squares solution: projection of y onto col(X)
beta = ;

% Compute projection of y onto col(X)
y_pred = ;

% Residual vector: difference between y and projection
residual = ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Display results
disp("beta (slope coefficient):");
disp(beta);
disp("Projection y_hat:");
disp(y_pred);
disp("Residual vector:");
disp(residual);

% 3D Visualization
figure;
hold on;
grid on;
plot3(0, 0, 0, 'ko', 'HandleVisibility','off');

% Plot y vector
quiver3(0,0,0, y(1), y(2), y(3), 0, 'k', 'LineWidth', 2, 'DisplayName','y');
% Plot y_pred (projection)
quiver3(0,0,0, y_pred(1), y_pred(2), y_pred(3), 0, 'b', 'LineWidth', 2, 'DisplayName','y\_hat');
% Plot residual
quiver3(y_pred(1), y_pred(2), y_pred(3), residual(1), residual(2), residual(3), 0, ...
    'r--', 'LineWidth', 2, 'DisplayName','residual');

legend;
xlabel('x_1'); ylabel('x_2'); zlabel('x_3');
title('Geometric Interpretation of Least Squares');
axis equal;
view(45, 30);
hold off;