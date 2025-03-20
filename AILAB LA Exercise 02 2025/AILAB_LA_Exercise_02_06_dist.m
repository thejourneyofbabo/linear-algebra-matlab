% Define vector
v = [1, 2];

% Define scalar
s = 2;

%%%%%%% TODO %%%%%%%
% Add scalar s to vector v 
v_plus_s = % x + x;
%%%%%%%%%%%%%%%%%%%%

% Create figure
figure;

% Display vector v from the origin
quiver(0, 0, v(1), v(2), 'b', 'LineWidth', 2);
hold on;



% Display vector v + scalar ('v_plus_s') from the origin
quiver(0, 0, v_plus_s(1), v_plus_s(2), 'r', 'LineWidth', 2);

% Set axes
axis equal;
xlim([0, 5]);
ylim([0, 5]);

% Show grid
grid on;

% Title for visualization of vector and scalar addition
title('Visualization of Vector and Scalar Addition');

% Axes labels
xlabel('X-axis');
ylabel('Y-axis');

% Legend for vectors and scalar
legend('Vector v', 'Vector v + Scalar');
