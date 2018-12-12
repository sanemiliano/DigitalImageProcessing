clear all
close all
clc

F = rgb2gray(imread('tajmajal.jpg'));
imshow(F)

w = [-2 -1 0; -1 1 1; 0 1 2];
R = imfilter(F,w,'replicate');
figure, imshow(R)