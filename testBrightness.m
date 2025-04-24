I = imread('images/blur.jpeg');

%h = contrast(I,1.5);

subplot(1,2,1);imshow(rgb2gray(I));hold on;
subplot(1,2,2);imshow(h);