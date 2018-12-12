%%BUENA PRACTICA
clear all %Limpia la memoria
close all %Cierra las pantallas de ejecuciones anteriores
clc       %Limpia la ventana de comandos


%%Abrir una imagen
f = imread('lena.bmp');

%Convertir de rgb a grayscale
g = rgb2gray(f);
imshow(g);
impixelinfo
figure, imshow(f);

%Mostrar informacion del pixel
impixelinfo
imdistline


