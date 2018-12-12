clear all
close all
clc

f = imread('geotest.jpg');
imshow(f)

%Scaling 
% sx = 0.5; sy = 1;
% T = [sx 0 0; 0 sy 0; 0 0 1];
%Rotation
% th = 45; %%MATLAB ESTA EN RADIANES, ENTOCES USAMOS COSD (COSINE DEGREE)
% T=[cosd(th) sind(th) 0
%     -sind(th) cosd(th) 0
%     0 0 1];

%Shear Hz
% a = -1;
% T = [1 0 0; a 1 0; 0 0 1];
%Shear Vt
a = 1;
T = [1 0 0; a 1 0; 0 0 1];

Tf = maketform('affine',T);%Matriz de afinidad.
g = imtransform(f,Tf);
figure, imshow(g)