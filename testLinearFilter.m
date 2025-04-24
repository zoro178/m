I = imread('images/lowContrast.jpeg');
J = imread('images/GT22.png');

L = linearFilter(I,J);

h1 = histogram(I);

h2 = histogram(J);

subplot(2,2,1);imshow(rgb2gray(I));hold on;
subplot(2,2,2);imshow(L);
subplot(2,2,3);bar(h1);
subplot(2,2,4);bar(h2);