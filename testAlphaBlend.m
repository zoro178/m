I = imread('images/R.jpeg');
J = imread('images/R (1).jpeg');

K = alphaBlend(I,J,0.4);

imread(K);