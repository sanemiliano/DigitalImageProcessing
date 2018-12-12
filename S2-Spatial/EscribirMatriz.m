%%BUENA PRACTICA
clear all %Limpia la memoria
close all %Cierra las pantallas de ejecuciones anteriores
clc       %Limpia la ventana de comandos


%%Abrir una imagen
f = imread('grayscale.tif');

%Valores de pixeles : impixelinfo
%Distancia entre pixeles: imdistline

a = [   86    99   113   126   138   148   159   169   180   191
    86    99   113   126   138   148   159   169   180   191
    86    99   113   126   138   148   159   169   180   191
    86    99   113   126   138   148   159   169   180   191
    86    99   113   126   138   148   159   169   180   191
    86    99   113   126   138   148   159   169   180   191
    86    99   113   126   138   148   159   169   180   191
    86    99   113   126   138   148   159   169   180   191
    86    99   113   126   138   148   159   169   180   191
    86    99   113   126   138   148   159   169   180   191];

a = a / 255; %Divide cada uno de los elementos de a entre 255.

imwrite(a,'test.jpg')

