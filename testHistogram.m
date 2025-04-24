I = imread('images/blur.jpeg');

h = histogram(I);

subplot(1,2,1);plot(h);hold on;
subplot(1,2,2);bar(h);