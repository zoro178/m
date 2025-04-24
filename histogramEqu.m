function I = histogramEqu(I);

if length(size(I)) == 3
    I = rgb2gray(I);
end

[M,N] = size(I);
k = 256;

h = histogram(I);
H = cumulativeHistogram(h);

for i = 1:M
    for j = 1:N
        a = I(i,j);
        I(i,j) = floor(H(a)*((k-1)/(M*N)));
    end
end
