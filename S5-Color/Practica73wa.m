%Color
clear all
close all
clc

f = imread('iris.tif');
imshow(f);

% % RGB to CMY  or CMY to RGB
% % g=imcomplement(f);
% % figure, imshow(g);

% %RGB to HSI
% g=rgb2hsi(f);
% figure, imshow(g);

% %HSI to RGB
% f2=hsi2rgb(g);
% figure, imshow(f2);

%el hsi nos da la matiz, que nos deja distinguir los efectos de la
%iluminacion sobre los objetos de la imagen
%usar model1, model2
% 
% color reduction
[f1 map1]=rgb2ind(f, 64);%rango de colores
figure, imshow(f1, map1);