I = imread('images/lowContrast.jpeg');
h1 = histogram(I);

J = autoContrast(I);
h2 = histogram(J);

K = modifiedAutoContrast(I);
h3 = histogram(K);

subplot(2,3,1);imshow(rgb2gray(I));hold on;
subplot(2,3,2);imshow(J);hold on;
subplot(2,3,3);imshow(K);hold on;
subplot(2,3,4);bar(h1);hold on;
subplot(2,3,5);bar(h2);hold on;
subplot(2,3,6);bar(h3);hold on;