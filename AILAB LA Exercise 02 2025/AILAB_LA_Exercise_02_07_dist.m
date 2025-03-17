% Define vector
v = [-2, 3];


%%%%%%% TODO %%%%%%%
% Use function 'norm' to Calculate L1 norm of the vector v
% Refer to the norm function by executing the following command 'help norm' in the MATLAB command window
l1_norm = norm(v, 1);
%%%%%%%%%%%%%%%%%%%%

% Display vector from the origin
quiver(0, 0, v(1), v(2), 'b', 'LineWidth', 2, 'AutoScale', 'off');
hold on;

% Add lines representing movement along each axis to visualize Manhattan distance
plot([0, v(1)], [0, 0], '--k', 'LineWidth', 1); % Movement along x-axis
plot([v(1), v(1)], [0, v(2)], '--k', 'LineWidth', 1); % Movement along y-axis

% Display the value of L1 norm
text(v(1)/2, -0.5, ['L1 Norm: ', num2str(l1_norm)], 'HorizontalAlignment', 'center');

% Set axes properties
axis equal;
xlim([-3, 3]);
ylim([-1, 4]);

% Show grid
grid on;

% Title for visualization of vector L1 norm
title('Visualization of Vector L1 Norm');

% Axes labels
xlabel('X-axis');
ylabel('Y-axis');

% Legend for vectors and movement along axes
legend('Vector v');
