function I = invert(I)

if length(size(I)) == 3
    I = rgb2gray(I);
end

[M,N] = size(I);
k = 255;

for i = 1:M
    for j = 1:N
        a = I(i,j);
        a = k-a;
        I(i,j) = a;
    end
end

