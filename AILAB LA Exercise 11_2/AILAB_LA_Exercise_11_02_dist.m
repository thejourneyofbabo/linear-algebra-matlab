% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define a matrix number of courses and life happiness
X = [4,12,3,14,13,12,9,11,7,13,11,9,2,5,7,10,0,9,7,13]';            % number of course
y = [25,54,21,80,68,84,62,57,40,60,64,45,38,51,52,58,21,75,70,70]'; % life happiness

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 27
% Compute the left-inverse of X
X_leftinv = (X'*X)^-1 * X';

% Calculate beta
beta = X_leftinv * y;
disp("beta");
disp(beta);

% Calculate y_pred with beta
y_pred = X * beta;
%%%%%%%%%%%%%%%%%%%%

% Plot
figure;
hold on;
grid on;
scatter(X, y, 'k', 'filled');  % X and y
plot(X, y_pred, 'b', 'LineWidth', 2);  % Plot predicted line with beta
for i = 1:length(X)
    plot([X(i) X(i)], [y(i) y_pred(i)], 'k--');  % Plot residuals as dashed lines
end
title('Create Design Matrix');
xlabel('Number of Courses ');
ylabel('Life Happiness');
legend('X and y', 'Prediction with beta', 'Location', 'northwest');
hold off;