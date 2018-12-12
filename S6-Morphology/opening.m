clear all
close all
clc

A=imread('shapes.tif');

subplot(1,3,1)
imshow(A)

Pattern=strel('square',20);
Ares=imopen(A,Pattern);

subplot(1,3,2)
imshow(Ares)

Pattern=strel('square',20);
Ares=imclose(Ares,Pattern);
%Ares=imopen(A,Pattern); % opening = imdilate(imerode(A,Pattern),Pattern); 
subplot(1,3,3)
imshow(Ares)