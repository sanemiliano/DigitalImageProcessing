%geometric transformations
clear all
close all
clc

f=imread('geotest.jpg')
imshow(f)

% %scaling
% sx=0.5;
% sy=0.5;
% T=[sx 0 0;0 sy 0;0 0 1];

% %rotating
% th=45;
% T=[cosd(th) sind(th) 0; -sind(th) cosd(th) 0; 0 0 1];

% %shear horizontal
% a=2;%ancho horizontal que se estira
% T=[1 0 0; a 1 0; 0 0 1]

%shear vertical
b=1;
T=[1 b 0 ; 0 1 0;0 0 1];

%se puede combinar estas, simplemente multiplicandolas con *

%cambio de formato de double a affine
Tf=maketform('affine', T);
g=imtransform(f, Tf);
figure, imshow(g);