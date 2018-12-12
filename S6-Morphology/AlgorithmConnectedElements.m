clear all
close all
clc


%Connected elements
f = imread('five-objects.tif');
imagesc(f)
colormap('gray');

[L,num] = bwlabel(f,8);
title(num)

imagesc(L==1)
% imagesc(L==2)
% imagesc(L==3)
% imagesc(L==4)
% imagesc(L==5)