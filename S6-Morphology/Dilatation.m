clear all
close all
clc

A=imread('text1.tif');
imshow(A)

% Pattern=strel('diamond',1); % 
Pattern=strel('line',15,90); % 

Adilateted=imdilate(A,Pattern);

figure, imshow(Adilateted)
