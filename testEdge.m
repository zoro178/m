I = imread('images/blur2.jpg');

if length(size(I))==3
    I = rgb2gray(I);
end

p = edge(I,'prewitt');
s = edge(I,'sobel');
r = edge(I,'roberts');
LoG = edge(I,'log');
c = edge(I,'canny');

subplot(2,3,1);imshow(I);title('original');
subplot(2,3,2);imshow(I);title('prewitt');
subplot(2,3,3);imshow(I);title('sobel');
subplot(2,3,4);imshow(I);title('roberts');
subplot(2,3,5);imshow(I);title('log');
subplot(2,3,6);imshow(I);title('canny');