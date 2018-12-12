clear all
close all
clc

F = rgb2gray(imread('tajmajal.jpg'));
imshow(F)

w = [-1 -1 -1 -1 -1
    -1 -2 -2 -2 -1
    -1 -2 34 -2 -1
    -1 -2 -2 -2 -1
    -1 -1 -1 -1 -1];
R = imfilter(F,w,'replicate');
figure, imshow(R)