% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define a matrix number of courses and life happiness
number_of_course = [4,12,3,14,13,12,9,11,7,13,11,9,2,5,7,10,0,9,7,13]';           
life_happiness = [25,54,21,80,68,84,62,57,40,60,64,45,38,51,52,58,21,75,70,70]';    

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 32
% Define a new design matrix X that contains the intercept term and number
% of cousrse
% dependent variable matrix y
X = ;   % Use number_of_course
y = ;   % Use life_happiness

% Compute the left-inverse of X
X_leftinv = ;

% Calculate beta
beta = ;   % [beta0 beta1]
%%%%%%%%%%%%%%%%%%%%
beta = flip(beta);      % [beta1 beta0]
y_pred = polyval(beta, number_of_course);  % Predict y values using beta

% Plot
figure;
hold on;
grid on;
scatter(number_of_course, y, 'k', 'filled');  % X and y
plot(number_of_course, y_pred, 'b', 'LineWidth', 2);  % Plot predicted line with beta
for i = 1:length(X)
    plot([number_of_course(i) number_of_course(i)], [y(i) y_pred(i)], 'k--');  % Plot residuals as dashed lines
end
title('Add Intercept Term');
xlabel('Number of Courses ');
ylabel('Life Happiness');
legend('X and y', 'Prediction with beta', 'Location', 'northwest');
hold off;