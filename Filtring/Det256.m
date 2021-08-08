function X = Det256(Y)
X = zeros(1,562*256);
for i=1:562
    for j=1:256
        
         X((i-1)*256 +j) = Y(i,j);
         
    end
end
end