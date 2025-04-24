function H = alphaBlend(I,J,alpha)

if length(size(I)) == 3
    I = rgb2gray(I);
end

if length(size(J)) == 3
    J = rgb2gray(J);
end

[M,N] = size(I);

for i = 1:M
    for j = 1:N
        I(i,j) = alpha*I + (1-alpha)*J;
    end
end

        