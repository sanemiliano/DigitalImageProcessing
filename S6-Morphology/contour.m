clear all
close all
clc

A=imread('man.jpg');
subplot(1,2,1)
imshow(A)

Pattern=strel('disk',15);
Ares=A-imerode(A,Pattern);

subplot(1,2,2)
imshow(Ares)