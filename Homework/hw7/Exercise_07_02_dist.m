% Clear workspace, command window, and close all figures
clc; clear; close all;

% Write here (start)
% Transformation matrix
T =;
% Write here (end)

% Define the set of points (a circle)
theta = linspace(0, 2*pi - 2*pi/20, 20);
origPoints = [cos(theta); sin(theta)];

% Write here (start)
% Apply transformation
transformedPoints = ;
% Write here (end)

% Plot the points
figure('Position', [100, 100, 600, 600]); % Create a figure window
plot(origPoints(1,:), origPoints(2,:), 'ko'); hold on; % Plot original points
plot(transformedPoints(1,:), transformedPoints(2,:), 's', 'Color', [0.7, 0.7, 0.7]); % Plot transformed points

axis square;
xlim([-2, 2]);
ylim([-2, 2]);
legend('Original', 'Transformed'); % Correctly add legend here