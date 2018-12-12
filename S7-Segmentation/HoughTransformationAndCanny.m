clear all
close all
clc

I = imread('Patt4.tif');
imshow(I,[]);

E = edge(I,'canny');
figure, imshow(E);

[H,theta,rho] = hough(E);
peaks = houghpeaks(H,5);

figure, imshow(I,[]);
for i=1:size(peaks,1)
    r = rho(peaks(i,1));
    t = theta(peaks(i,2));
    
    x0 = 1;
    y0 = (r-x0*cosd(t))/sind(t);
    x1 = size(I,2);
    y1 = (r - x1*cosd(t))/sind(t);
    
    line([x0 x1],[y0 y1],'Color','r');
end
end