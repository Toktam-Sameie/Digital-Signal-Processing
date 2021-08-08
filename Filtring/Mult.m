function X = Mult(X , v)
% dimention of X is 562 * 256 and v in vector by size 1 * 256
for i=1:562
    X(i,:) = X(i,:) .* v;
end
