clear all
close all
clc
 
 %Primer paso -----Obtenes radio
f = imread('circle.jpg');
imshow(f)
imdistline

%Segundo paso ---------- obtener contorno
[g, t] = edge(f,'sobel')
imshow(g)

%Tercer paso Obtener transformada de 
r = 20:35;
H = circle_hough(g,r,'same','normalise');

%Obtener las intersecciones mas importantes,
%%Obtener las nhoodr--De radio a radio y nhoodxy--de circunferencia a circunferencia, que me sirven para pasarlas a la siguiente funcion. Las obtenemos con imdistline
peaks = circle_houghpeaks(H,r,'nhoodxy',5,'nhoodr',55,npeaks,4)

%%Reconstruir
imshow(f)
hold on
for i = peaks;
    [x,y] = circlepoints(i(3));
    plot(x+i(1),y+i(2),'g-','linewidth',3))
end