A = randi(10, 5, 5);  
[n, m] = size(A);
for i = 1:n
    for j = 1:m
        if i == j
            A(i, j) = i^2 + j^2;  
        elseif i > j
            A(i, j) = i^2 + j;   
        else
            A(i, j) = i + j^2;  
        end
    end
end
disp('Changed Matrix:');
disp(A);
matrix_sum = sum(A(:));
disp('Sum:');
disp(matrix_sum);