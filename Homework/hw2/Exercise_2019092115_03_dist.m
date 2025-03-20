% matrix initializiation
mat_31 = [1;2;3];
mat_13 = [4,5,6];
mat_23 = [7,8,9;10,11,12];

% transpose 3x1 matrix
mat_31_transposed = manualTranspose(mat_31);
% transpose 1x3 matrix
mat_13_transposed = manualTranspose(mat_13);
% transpose 2x3 matrix
mat_23_transposed = manualTranspose(mat_23);

disp("Size of original matrix")
disp(size(mat_31));
disp(size(mat_13));
disp(size(mat_23));

disp("Size of Transposed matrix")
disp(size(mat_31_transposed));
disp(size(mat_13_transposed));
disp(size(mat_23_transposed));

%%%%%%%%%%%%%%%% ToDo %%%%%%%%%%%%%%%%
function vt = manualTranspose(v)
    % Get the size of the input matrix or vector
    [rows, cols] = size(v);
    
    % Initialize the transposed matrix with flipped dimensions
    vt = zeros(cols, rows);
    
    % Loop over the matrix to transpose it
    for i = 1:rows
        for j = 1:cols
            %vt(x, x) = v(x, x);
        end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%