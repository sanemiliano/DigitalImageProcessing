clear all
close all
clc

f = imread('breast2.jpg');
imshow(f)
g = imadjust(f,[0;1],[1;0]);
figure, imshow(g)
g = imadjust(f,[180/255;235/255],[1;0]);
imshow(g)
