% Test on a non-unit vector
w = [13; -5; 7];
uw = createUnitVectorWoNorm(w);
%  display w and uw var
disp(w);
disp(uw);
disp(' ');

% Start plotting
figure;
quiver3(0, 0, 0, w(1), w(2), w(3), 'r', 'LineWidth', 2, 'MaxHeadSize', 0.5); % Plot the original vector in red
hold on; % Hold on to plot the unit vector on the same graph
quiver3(0, 0, 0, uw(1), uw(2), uw(3), 'b', 'LineWidth', 2, 'MaxHeadSize', 0.5); % Plot the unit vector in blue
axis equal; % Set the aspect ratio so that the scales are equal
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Original and Unit Vector');
legend('Original Vector', 'Unit Vector');
grid on; % Add a grid for better visibility


%%%%%%%%%%%%%%%% ToDo %%%%%%%%%%%%%%%%
function u = createUnitVectorWoNorm(v)
  % Manually calculate the norm of the vector
  mu = sqrt(sum(v.^2));
  % Avoid division by zero if the vector is all zeros
  if %xx == 0
      u = %x;
  else
      % Return the unit vector
      u = %x / xx;
  end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%