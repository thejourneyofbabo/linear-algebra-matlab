% Data citation: Akbilgic, Oguz. (2013). ISTANBUL STOCK EXCHANGE. UCI Machine Learning Repository.
% data source website: https://archive-beta.ics.uci.edu/ml/datasets/istanbul+stock+exchange

% hint
% corr()
% cov()
% diag()
% eig()
% evecs()
% sum()
% sort()
% mean()

% plot()
% heatmap()


% import the data
url = 'https://archive.ics.uci.edu/ml/machine-learning-databases/00247/data_akbilgic.xlsx';
raw_data = readtable(url, 'Sheet', 1, 'Range', 'A2');

dates = ;
data = ;
location = raw_data.Properties.VariableNames(2:end);

% show the correlation matrix in an image
figure;
corrMatrix = ; % code here!

% calculate covariance matrix (zero mean)
X = data;
X =;
covmat =;

% show some data in line plots
figure;
% code here!
% ;
xlabel('Index');
ylabel('Market returns');
title('Market Returns Over Time');
saveas(gcf, 'Figure_14_01a.png');

figure;
% code here! 
% ;
title('Correlation Matrix');
saveas(gcf, 'Figure_14_01b.png');

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
