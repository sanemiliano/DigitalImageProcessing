clear all
close all
clc

f = imread('Patt2.jpg');
imshow(f)

%mask = [-1 -1 -1; 2 2 2; -1 -1 -1]; %%Lineas horizontales
mask = [-1 2 -1; -1 2 -1; -1 -1 -1]; %%Lineas verticales
mask = [-1 -1 2; -1 2 -1; 2 -1 -1]; %%Lineas diagonal a 45 grados
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