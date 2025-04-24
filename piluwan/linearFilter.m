function I = linearFilter(I,F)

if length(size(I)) == 3
    I = rgb2gray(I);
end

[M,N] = size(I);
[k,l] = size(F);

K = (k-1)/2;
L = (l-1)/2;

J = I;

for x = K+1:M-K
    for y = L+1:N-L
        S = 0;
        
        for i = -K:K
            for j = -L:L
                t = J(x+i,y+j)*F(K+1+i,L+1+j);
                S = S+uint32(t);
            end
        end
        q = s/(k*l);
        I(x,y) = q;
    end
end
