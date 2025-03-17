% Define vector
v = [-2, 3];


%%%%%%% TODO %%%%%%%
% Use function 'norm' to Calculate L2 norm of the vector v
% Refer to the norm function by executing the following command 'help norm' in the MATLAB command window
l2_norm = norm(v, 2);
%%%%%%%%%%%%%%%%%%%%

% Display vector from the origin
quiver(0, 0, v(1), v(2), 'b', 'LineWidth', 2, 'AutoScale', 'off');
hold on;

% Add line representing the vector to illustrate its magnitude
plot([0, v(1)], [0, v(2)], 'r', 'LineWidth', 2);

% Display the value of L2 norm
text(v(1)/2, v(2)/2, ['L2 Norm: ', num2str(l2_norm)], 'HorizontalAlignment', 'right');

% Set axes properties
axis equal;
xlim([-3, 3]);
ylim([-1, 4]);

% Show grid
grid on;

% Title for visualization of vector L2 norm
title('Visualization of Vector L2 Norm');

% Axes labels
xlabel('X-axis');
ylabel('Y-axis');

% Legend for vectors
legend('Vector v', 'Magnitude');
