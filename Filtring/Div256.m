function Y = Div256(X)
NOT = floor(length(X)/256);
Y = zeros(NOT,256);
for i=1:(NOT-1)
    for j=1:256
        
         Y(i,j) = X((i-1)*256 + j,1);
    end
end
end