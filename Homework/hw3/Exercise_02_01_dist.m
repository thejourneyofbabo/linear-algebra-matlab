% Scalars
l1 = 1;
l2 = 2;
l3 = -3;

% Vectors
v1 = [4, 5, 1];
v2 = [-4, 0, -4];
v3 = [1, 3, 2];

linCombo1 = l1 * v1 + l2 * v2 + l3 * v3;
disp(linCombo1);

% Scalars and vectors organized into arrays
scalars = [l1, l2, l3];
vectors = [v1; v2; v3]; % Each vector is a row

% Initialize the linear combination
linCombo2 = zeros(1, length(v1)); % Assuming all vectors have the same length

% Implement linear weighted combination using a loop
for i = 1:length(scalars)
    linCombo2 = linCombo2 + scalars(i) * vectors(i,:);
end

% Confirm it's the same answer as above
disp(linCombo2);
