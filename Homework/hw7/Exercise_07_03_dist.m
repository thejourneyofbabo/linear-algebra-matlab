% Clear workspace, command window, and close all figures
clc; clear; close all;

% Read an image from the web
url = 'https://upload.wikimedia.org/wikipedia/commons/6/61/De_nieuwe_vleugel_van_het_Stedelijk_Museum_Amsterdam.jpg';
bathtub = webread(url);

% Check the size
disp(size(bathtub));

% Convert the image to 2D for convenience (grayscale)
bathtub2d = rgb2gray(bathtub);
bathtub2d = double(bathtub2d);
bathtub2d = (bathtub2d - min(bathtub2d(:))) / (max(bathtub2d(:)) - min(bathtub2d(:)));

% Write here (start)
% Create two feature-detection kernels
VK =; % Vertical kernel
HK =; % Horizontal kernel

% Run convolution with the Vertical Kernel
convresVK =;
% Run convolution with the Horizontal Kernel
convresHK =;

% Write here (end)

% Display kernels and convolution results
figure;
subplot(2,2,1);
imshow(VK, []);
colormap('gray');
title('Vertical Kernel');

subplot(2,2,2);
imshow(HK, []);
colormap('gray');
title('Horizontal Kernel');

subplot(2,2,3);
imshow(convresVK, [], 'Colormap', gray, 'DisplayRange', [0, max(convresVK(:)) * 0.1]);
axis off;
title('Convolution Result with Vertical Kernel');

subplot(2,2,4);
imshow(convresHK, [], 'Colormap', gray, 'DisplayRange', [0, max(convresHK(:)) * 0.1]);
axis off;
title('Convolution Result with Horizontal Kernel');