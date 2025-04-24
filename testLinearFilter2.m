I = imread('images/GT22.png');

box = [0,0,0,0,0;0,2,2,2,0;0,2,2,2,0;0,2,2,2,0;0,0,0,0,0];
gaus = [2,3,2;3,5,3;2,3,2];
lap = [-1,-2,-2;-2,5,-2;-1,-2,-1];


K = linearFilter(I,gaus);

subplot(1,2,1);imshow(rgb2gray(I));hold on;
subplot(1,2,2);imshow(K);