clear all
close all
clc
f=imread('woody.jpg');
fblack=imread('woodyBW.jpg');
subplot(1, 3, 1)
imshow(f);
subplot(1, 3, 2)
imshow(fblack);
impixelinfo

C= ones(256,3);
%%RED
C(56:85, 1)=192/255;
C(56:85, 2)=0/255;
C(56:85, 3)=13/255;
%%YELLOW
C(150:190, 1)=255/255;
C(150:190, 2)=168/255;
C(150:190, 3)=0/255;
%%BLACK
C(1:55, 1)=0;
C(1:55, 2)=0;
C(1:55, 3)=0;

subplot(1, 3, 3)
imshow(fblack, C);

