clear all
close all
clc

A = imread('aerial.tif');
imshow(A)

B = strel('square',5);
C = imdilate(A,B);
figure,imshow(C);

D = imerode(A,B);
figure, imshow(D);

E = C - D;
figure, imshow(E)

