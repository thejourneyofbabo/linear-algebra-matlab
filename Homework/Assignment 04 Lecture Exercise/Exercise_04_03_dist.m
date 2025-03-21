kernel = [-1, 1];

signal = zeros(1, 30);
signal(11:20) = 1;

subplot(1,2,1);
plot(kernel, 'ks-'); title('Kernel'); xlim([-15, 15]);

subplot(1,2,2);
plot(signal, 'ks-'); title('Time series signal');

featureMap = zeros(1, length(signal));

%%%%%%%%%%%%%% ToDo %%%%%%%%%%%%%%

for t = 2:length(signal)-1
    featureMap(t) = dot(kernel, signal(t-1:t));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
subplot(1,2,1);
plot(kernel, 'ks-'); title('Kernel'); xlim([-15, 15]);

subplot(1,2,2);
plot(signal, 'ks-', 'LineWidth', 3); hold on;
stem(featureMap, 'filled', 'LineStyle', 'none', 'Marker', 'o', 'MarkerFaceColor', [.7 .7 .7], 'MarkerEdgeColor', [.7 .7 .7]);
title('Edge detection'); legend('Signal', 'Edge detection');
hold off;
