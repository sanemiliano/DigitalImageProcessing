clear all
close all
clc

f = imread('Patt1.jpg');
imshow(f)

mask = [-1 -1 -1; -1 8 -1; -1 -1 -1];
R = abs(imfilter(f,mask));
imshow(R)

for T = .1: .1: .8; 
	U=R>=T;
	imshow(U);
	pause(.2)
end

T = max(R(:));
U = R>=T;
figure, imshow(U);