I = imread('images/GT22.png');

h = histogram(I);
H = cumulativeHistogram(h);

J = histogramEqu(I);
h1 = histogram(J);
H1 = cumulativeHistogram(h1);

subplot(2,3,1);bar(h);hold on;
subplot(2,3,2);bar(H);hold on;
subplot(2,3,3);bar(H1);hold on;

