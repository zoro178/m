I = imread('images/PET.tif');

if length(size(I))==3
    I = rgb2gray(I);
end

f = fspecial('unsharp');
uns = imfilter(I,f);

f1 = fspecial('average');
avg = imfilter(I,f1);

f2 = fspecial('laplacian');
lap = imfilter(I,f2);

f3 = fspecial('gaussian');
gus = imfilter(I,f3);

subplot(2,2,1);imshow(uns);title('unsharp');hold on;
subplot(2,2,2);imshow(avg);title('average');hold on;
subplot(2,2,3);imshow(lap);title('laplacian');hold on;
subplot(2,2,4);imshow(gus);title('gussian')