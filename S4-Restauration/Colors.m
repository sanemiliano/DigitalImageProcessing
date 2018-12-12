clear all
close all
clc

f=imread('iris.tif');
imshow(f);

%Rgb-->CMY
%g=imcomplement(f);
%figure, imshow(g);

%CMY-->Rgb
%f2=imcomplement(g);
%figure, imshow(f2);

%Rgb-->HSI
g = rgb2hsi(f);
figure, imshow(g);
%HSI-->Rgb
f2 = hsi2rgb(g);
figure, imshow(f2);