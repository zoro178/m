I = imread('images/lowContrast.jpeg');

J = autoContrast(I);

subplot(1,2,1);imshow(rgb2gray(I)); hold on;
subplot(1,2,2);imshow(J);