clear all
close all
clc

f = imread('moon2.tif');
f = im2double(f);

imshow(f)

w = [1 1 1; 1 -8 1; 1 1 1];
R = imfilter(f,w);
L = f -R;
figure, imshow(L)