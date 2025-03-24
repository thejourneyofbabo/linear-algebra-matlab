% Define the variables
a = 0:3; 
offsets = -50:50; 

results = zeros(length(offsets), 2);

% Define the corrAndCosine function if it's not already defined
% Please ensure that the corrAndCosine function is defined in MATLAB as shown previously

for i = 1:length(offsets)
    [cor, cos] = corrAndCosine(a, a + offsets(i));
    results(i, :) = [cor, cos];
end

figure; 
plot(offsets, results, 'LineWidth', 1.5); 
hold on; 
h = gca; 
h.Children(1).Color = [0.7, 0.7, 0.7]; 
h.Children(1).Marker = 's'; 
h.Children(2).Color = 'k'; 
h.Children(2).Marker = 'o'; 

xlabel('Mean offset');
ylabel('r or c');
legend('Pearson', 'Cosine sim.', 'Location', 'Best');

print('Figure_03_02','-dpng','-r300'); % Saves the figure as a PNG with 300 DPI


%%%%%%%%%%%%%% ToDo %%%%%%%%%%%%%%
function [cor, cos] = corrAndCosine(x, y)
    num = ; 
    den = ; 
    cos = ;

    xm = x - mean(x);
    ym = y - mean(y);
    num = ; 
    den = ;
    cor = ;

end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%