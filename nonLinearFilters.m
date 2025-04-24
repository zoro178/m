I = imread('images/R.png');

if length(size(I))==3
    I = rgb2gray(I);
end

I = imnoise(I,'salt & pepper');

f = @(x) min(x(:));
Jmin = nlfilter(I,[3,3],f);


f = @(x) median(x(:));
Jmed = nlfilter(I,[3,3],f);

f = @(x) max(x(:));
Jmax = nlfilter(I,[3,3],f);


figure;
subplot(2,2,1);imshow(I);title('original');hold on;
subplot(2,2,2);imshow(Jmin);title('minimum');hold on;
subplot(2,2,3);imshow(Jmed);title('median');hold on;
subplot(2,2,4);imshow(Jmax);title('maximum');
