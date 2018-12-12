clear all
close all
clc

f = imread('Patt3.tif');
imshow(f)

mask = [-1 -2 -1; 0 0 0; 1 2 1];
Gx = abs(imfilter(f,maskx));
masky = [-1 0  1; -2 0 2; -1 0 1];
Gy = abs(imfilter(f,masky));
G = Gx+Gy;
figure,imshow(G)

[g,T] = edge(f,'Canny');
figure, imshow(g);