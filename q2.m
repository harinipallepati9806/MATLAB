M = randi([1, 100], 10, 10);
C = zeros(10, 10);
for i = 1:10
    for j = 1:10
        if M(i, j) >= 1 && M(i, j) <= 33
            C(i, j) = 1;
        elseif M(i, j) >= 34 && M(i, j) <= 66
            C(i, j) = 2;
        elseif M(i, j) >= 67 && M(i, j) <= 100
            C(i, j) = 3;
        end
    end
end
disp('Matrix M:');
disp(M);
figure;
imagesc(C); 
colormap([0 0 1;  
          0 1 0; 
          1 0 0]); 
colorbar;
title('Matrix values colour by ranges');
xlabel('Column');
ylabel('Row');