% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define the path to the CSV file
data_path = 'dataMat.csv';

% Read the data from the URL into a table
data = readtable(data_path, 'FileType', 'text', 'Delimiter', ',');
dataMat = table2array(data);

% write here (start)
% Compute the mean of each data feature
datamean = ;

% Mean-center the data
dataMatM = ;

% Confirm that any given feature has mean=0 (or very close...)
disp('Mean of the first feature after centering: ');
disp(mean(dataMatM(:, 1)))

% Compute the covariance matrix
covMat =;

% Diagonal matrix of inverse standard deviations
variances = ; % Extract diagonal elements (variances) from the covariance matrix
standard_devs =;
S = ; % Create diagonal matrix of inverse standard deviations

% Compute the correlation matrix
% R = S*C*S
corrMat = ;

% write here (end)

% Dynamic color scaling
% Just for visualization
clim = max(abs(covMat(:))) * 0.2;

% Visualization of the covariance and correlation matrices
figure('Position', [100, 100, 1300, 600]);

% Plot the covariance matrix
subplot(1, 2, 1); % First subplot
imagesc(covMat, [-clim, clim]); % Display the covariance matrix
colormap('gray'); % Use gray colormap
title('Data covariance matrix', 'FontWeight', 'bold');
colorbar; % Show color scale

% Plot the correlation matrix
subplot(1, 2, 2); % Second subplot
imagesc(corrMat, [-0.5, 0.5]); % Display the correlation matrix
colormap('gray'); % Use gray colormap
title('Data correlation matrix', 'FontWeight', 'bold');
colorbar; % Show color scale