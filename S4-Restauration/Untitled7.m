clear all
close all
clc

f = [1 1 1; 1 1 1; 1 1 1];

imshow(f)

w = [0 1 0; 1 -4 1; 0 1 0];
R = imfilter(f,w);
figure, imshow(L)