% Data citation: Akbilgic, Oguz. (2013). ISTANBUL STOCK EXCHANGE. UCI Machine Learning Repository.
% data source website: https://archive-beta.ics.uci.edu/ml/datasets/istanbul+stock+exchange

% import the data
url = 'https://archive.ics.uci.edu/ml/machine-learning-databases/00247/data_akbilgic.xlsx';
raw_data = readtable(url, 'Sheet', 1, 'Range', 'A2');

dates = ;
data = ;
location = raw_data.Properties.VariableNames(2:end);

% show the correlation matrix in an image
corrMatrix = ; % code here!

% PCA Step 1: covariance matrix
% calculate covariance matrix (zero mean)
X = data;
X =;
covmat =;

% PCA Step 2: eigendecomposition

% PCA Step 3: sort results

% PCA Step 4: component scores using top 2 sort results

% PCA Step 5: eigenvalues to % variance

% Show that variance of the components equals the eigenvalue
disp('Variance of first two components:');
disp(var(components, 1));

disp('First two eigenvalues:');
disp(evals(1:2));

% visualize it
figure;
imagesc(covmat);
colorbar;
title('Data Covariance');
xticks(1:size(X, 2));
xticklabels(location);
yticks(1:size(X, 2));
yticklabels(location);
caxis([-.0002 .0002]);
saveas(gcf, 'Figure_14_01c.png');

% show scree plot
figure;
plot(factorScores, 'ks-', 'MarkerSize', 15);
xlabel('Component index');
ylabel('Percent variance');
title('Scree plot of stocks dataset');
grid on;
saveas(gcf, 'scree_plot.png');

% correlate first two components
figure;
plot(components);
xlabel('Time (day)');
legend('Comp. 1', 'Comp. 2');
title(['Correlation r=', num2str(corr(components(:, 1), components(:, 2)))]);

% bar plots of component loadings
figure;
subplot(1, 2, 1);
bar(evecs(:, 1), 'k');
xticks(1:size(X, 2));
xticklabels(location);
xtickangle(45);
ylabel('Weight');
title('Weights for component 1');

subplot(1, 2, 2);
bar(evecs(:, 2), 'k');
xticks(1:size(X, 2));
xticklabels(location);
xtickangle(45);
ylabel('Weight');
title('Weights for component 2');
