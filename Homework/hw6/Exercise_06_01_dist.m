% Clear workspace, command window, and close all figures
clc; clear; close all;

%%%%%%%%%%%%%%%%% TODO %%%%%%%%%%%%%%%%%
% experiment simulations
% range of scaling parameters (0 to 50 in 40 steps)
%   hint: use linspace
scalingVals = linspace(0, 50, 40);

nExperiments = 10;

% initialize output
matrixNorms = zeros(length(scalingVals), nExperiments);

% run experiment
for si = 1:length(scalingVals)
  for expi = 1:nExperiments

    % generate a random scaled matrix
    m = scalingVals(si) * randn(10, 10);
    % store its norm Frobenius
    frnorm = sqrt(trace(m'*m));
    % matrixNorms
    matrixNorms(si, expi) = frnorm;
  end
end

% plot the results refer to figure of slide 100
mean_frnorm = mean(matrixNorms, 2);
plot(scalingVals, mean_frnorm, 'o-');
hold on;

xlabel('Matrix scalar');
ylabel('Matrix Frobenious');

xlim([0, 50]);
ylim([0, 600]);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%