clear all
close all
clc

A=imread('text1.tif');
imshow(A)

% Pattern=strel('diamond',1); % 
Pattern=strel('disk',10); % 

Adilateted=imerode(A,Pattern);

figure, imshow(Adilateted)
