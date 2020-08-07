
% Author : Tanalp Þengün
% Course : Linear System Theory 

% Homework 4 Codes.

matrix_elements = randn(1,100)+ 1i*(rand(1,100));

for i=1:10
    for j=1:10
    Unitary_matrix(i,j) = matrix_elements((i-1)*10+j)...
        ./ length(abs(matrix_elements((i-1)*10+j)));
    end 
end
[ W , DE  = eig(Unitary_matrix);
