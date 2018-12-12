clear all
close all
clc

A= imread('A.tif');
B= imread('B.tif');
C= imread('C.tif');

a =  A&C | A&B;
b = B&C | B&A;
c = C-B;

subplot(1,3,1)
imshow(a)
subplot(1,3,2)
imshow(b)
subplot(1,3,3)
imshow(c)
