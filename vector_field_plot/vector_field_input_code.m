% MATLAB for plotting vector field in 2D and 3D
clear

% prompt for boundaries
lower_bound = input("Enter lower bound: ");
upper_bound = input("Enter upper bound: ");

% create a meshgrid
[matrix_x ,matrix_y, matrix_z] = meshgrid(lower_bound:1:upper_bound);

% prompt for expression <x,y,z> in string form
x_expr = input("X-component for vector field (press enter if none): ", "s");
y_expr = input("Y-component for vector field (press enter if none): ", "s");
z_expr = input("Z-component for vector field (press enter if none): ", "s");

% Create zeros array to store the results
[rows, cols, heights] = size(matrix_x);
matrix_x_output = zeros(rows, cols, heights);
matrix_y_output = zeros(rows, cols, heights);
matrix_z_output = zeros(rows, cols, heights);

% Loop through each element in the array
for i = 1:rows
    for j = 1:cols
        for k = 1:heights
            % Set x, y, z = to the corresponding element to use eval
            x = matrix_x(i,j,k); y = matrix_y(i,j,k); z = matrix_z(i,j,k);

            % Use eval on the x, y and z element above
            if (x_expr ~= "")
                matrix_x_output(i,j,k) = eval(x_expr);
            end

            if (y_expr ~= "")
                matrix_y_output(i,j,k) = eval(y_expr);
            end

            if (z_expr ~= "")
               matrix_z_output(i,j,k) = eval(z_expr);
            end
        end 
    end
end

% Plot
if (z_expr ~= "")
   quiver3(matrix_x, matrix_y, matrix_z, ...
       matrix_x_output, matrix_y_output, matrix_z_output, 1.5, "r")
else
    quiver(matrix_x, matrix_y, matrix_x_output, matrix_y_output, 1.5, "r")
end
