clear all
close all
clc

A=imread('fingerprint.tif');

subplot(1,3,1)
imshow(A)

Pattern=strel('square',3);
Ares=imclose(A,Pattern);

subplot(1,3,2)
imshow(Ares)

Ares=imopen(Ares,Pattern);
subplot(1,3,3)
imshow(Ares)