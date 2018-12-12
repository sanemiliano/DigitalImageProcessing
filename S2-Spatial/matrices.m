%%BUENA PRACTICA
clear all %Limpia la memoria
close all %Cierra las pantallas de ejecuciones anteriores
clc       %Limpia la ventana de comandos


%%Abrir una imagen
a = [ 1 2 3;
      4 5 6;
      7 8 9];

%desde el 1, en pasos de 1, hasta el 20----> Te constuye un vector.  
b = 1:1:20

    %Desde la casilla 1, de saltos de 2 en dos, hasta la casilla 8.
c = b(1:2:8)
