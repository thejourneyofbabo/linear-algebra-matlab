% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define a matrix number of courses and life happiness
number_of_course = [4,12,3,14,13,12,9,11,7,13,11,9,2,5,7,10,0,9,7,13]';

% Define a new design matrix X that contains the intercept term and
% dependent variable matrix y
X = [ones(20,1), number_of_course]; % Use number_of_course
y = [25,54,21,80,68,84,62,57,40,60,64,45,38,51,52,58,21,75,70,70]';

%%%%%%% TODO %%%%%%%
% Compute the left-inverse of X
X_leftinv = ;

% Calculate the beta
beta = ;

% Predict y values using beta
y_pred = ;  

% Calculate residuals
residuals = ;

% Calculate sum of squared errors (SSE)
sse = ;
%%%%%%%%%%%%%%%%%%%%

% Plot
figure;
hold on;
grid on;
scatter(number_of_course, y, 'k', 'filled');  % X and y
plot(number_of_course, y_pred, 'b', 'LineWidth', 2);  % Plot predicted line with beta
for i = 1:length(X)
    plot([number_of_course(i) number_of_course(i)], [y(i) y_pred(i)], 'k--');  % Plot residuals as dashed lines
end
title(sprintf('SSE = %.2f', sse));
xlabel('Number of Courses ');
ylabel('Life Happiness');
legend('X and y', 'Prediction with beta', 'Location', 'northwest');
hold off;