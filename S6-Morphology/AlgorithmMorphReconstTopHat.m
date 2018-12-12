clear all
close all
clc
%Nos sirve para regular la iluminacion
%
A = imread('rice.png');
imshow(A)

se = strel('disk',12);

tophatFiltered = imtophat(A,se);
figure
imshow(tophatFiltered)

contrastAdjusted = imadjust(tophatFiltered);
figure
imshow(contrastAdjusted)

