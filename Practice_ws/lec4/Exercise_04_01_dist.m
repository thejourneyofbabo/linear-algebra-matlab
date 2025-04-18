% test
a = randn(15, 1);
b = randn(15, 1);

% cal corr and cosine corr
[r, c] = corrAndCosine(a, b);

fprintf('Calculated correlation: %f\n', r);
fprintf('MATLAB corr function: %f\n', corr(a, b));

%%%%%%%%%%%%%% ToDo %%%%%%%%%%%%%%
function [cor, cos] = corrAndCosine(x, y)
    num = dot(x, y); 
    den = norm(x, 2) * norm(y, 2); 
    cos = num / den;

    xm = x - mean(x);
    ym = y - mean(y);
    num = dot(xm, ym); 
    den = norm(xm,2) * norm(ym, 2);
    cor = num / den;

end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%