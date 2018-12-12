clear all
close all
clc

f = imread('noisy_image2.tif');
imshow(f)

[B,c,r] = roipoly(f);
imshow(B)
[p np] = histroi(f,c,r);
figure,bar(p);