% Define the vector
v = [1, 2];

% Define the scalar
s = -1/2;

%%%%%%% TODO %%%%%%%
% Compute the scaled vector and initialize the value on the 'scaled_v'
scaled_v = s * v;
%%%%%%%%%%%%%%%%%%%%

% Create a figure
figure;

% Plot the original vector
quiver(0, 0, v(1), v(2), 'b', 'LineWidth', 3, 'AutoScale', 'off','MaxHeadSize', 2);
hold on;

% Plot the scaled vector
quiver(0, 0, scaled_v(1), scaled_v(2), 'r', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 2);

% Set axes properties
axis equal;
xlim([-3, 3]);
ylim([-3, 3]);

% Show grid
grid on;

% Title for the visualization
title('Scalar-Vector Multiplication');

% Axes labels
xlabel('X-axis');
ylabel('Y-axis');

% Legend for vectors
legend('Original Vector', 'Scaled Vector');