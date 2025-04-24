I = imread('images/GT22.jpg');

if length(size(I)) == 3
    I = rgb2gray(I);
end

[M,N] = size(I);

I = I(1:2:M,1:2:N);