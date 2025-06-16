%% Code from 공돌이의 수학정리노트
% Github : https://github.com/angeloyeo/gongdols.git
% Edit to improve the readability

function [newX,newY,changeX, changeY] = my_nonlin_func(X,Y,varargin)

    if nargin ==2
        whatyouneed = 4;
    elseif nargin > 2
        whatyouneed = varargin{1};
    end

    if whatyouneed == 1
        newX = X+Y.^2;
        newY = Y+exp(X); % nonlin function 2
        
    elseif whatyouneed == 2 | strcmp(whatyouneed,'polar') % nonlin function 4 cartesian to polar coordinate
        newX =X.*cos(Y); 
        newY = X.*sin(Y);
         
    elseif whatyouneed == 3
        newX =X.^2-Y.^2; newY = 2*X.*Y; % nonlin function 5
        
    elseif strcmp(whatyouneed,'basic') % nonlin function 1 
        newX = X+sin(Y/2); 
        newY = Y+sin(X/2); 
    else
        newX = X+sin(Y/2); 
        newY = Y+sin(X/2); 
    end
    
    changeX = newX-X;
    changeY = newY-Y;

end