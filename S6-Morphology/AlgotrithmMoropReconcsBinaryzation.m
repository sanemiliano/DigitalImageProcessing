clear all
close all
clc

A = imread('aerial.tif');
imshow(A)
%Viendo la tendencia
imhist(A)

%Binarizacion de la imagen: pasar de determinado valor para abajo a 0, y de
%ese valor para arriba a 1
T = graythresh(A); %% Es el munto "medio. El resulatdo debe estar normalizado
J = imadjust(A,[T;T+1e-4],[0;1]);
imshow(J)