clear all
close all
clc
%pseudocolor: colorear mapas de escalas de gris
%mapa DE COLORES
% f=imread('flag.jpg');
% imshow(f);
% impixelinfo
% 
% C1=zeros(70, 3);
% %C1(:, :)=1  %todas las filas de la columna 3 se van a  1
% 
% C3=zeros(130, 3);
% C3(:, 1)=1;
% C3(:, 2)=1;
% 
% C2=zeros(55, 3);
% C2(:, 1)=1;
% 
% C=[C1;C2;C3];
% imshow(f, C); %imshow bandera con el mapa de colores

% % %MAPAS MAS COMPLEJOS
% % f=imread('cell2.jpg');
% % g=imread('cell1.jpg');
% % imshow(f);
% % impixelinfo
% % 
% % %viendo manualmente, 240-255 blanco, 175-220 rosa, 70-130 morado, 221-239
% % %azul
% % %figure, imshow(g);
% % %0-150 morado 131, 79, 189
% % C1=zeros(150, 3);
% % C1(:, 1)=131/255;
% % C1(:, 2)=79/255;
% % C1(:, 3)=189/255;
% % 
% % %151-200 rosa 212, 161, 178
% % C2=zeros(50, 3);
% % C2(:, 1)=212/255;
% % C2(:, 2)=161/255;
% % C2(:, 3)=178/255;
% % %201-239 azul 91, 98, 189 de aho lo corregi
% % C3=zeros(39, 3);
% % C3(:, 1)=200/255;
% % C3(:, 2)=200/255;
% % C3(:, 3)=225/255;
% % %240-255 blanco 1 1 1
% % C4=ones(16, 3);
% % 
% % C=[C1;C2;C3;C4];
% % 
% % imshow(f, C);
% % 
% % 

% COLORMAPS DE MATLAB

% f=imread('mouse.jpg');
% imshow(f);
% C=jet(256);
% figure, imshow(f, C);

% f=imread('ultrasound.jpg');
% imshow(f);
% C=copper(256);
% figure, imshow(f, C);

% f=imread('man.jpg');
% imshow(f);
% C=jet(128);
% figure, imshow(f, C);

%--------------------------------------------------------------------------------------
%FULL COLOR
% % f=imread('model1.bmp');
% % f=imread('fresas.jpg');
% % imshow(f);
% % f=rgb2hsi(f);
% f=imcomplement(g);
% separo cada una de  las capas
% % R=f(:,:,1);
% % G=f(:,:,2);
% % B=f(:,:,3);
% % 
% % %negativo en R
% % Rc=imcomplement(R);
% % f(:,:,1)=Rc;
% % 
% % % Gamma en G, Eq. en B
% % Gc=im2double(G).^0.5;
% % Bc = histeq(B);
% % Gc=im2uint8(Gc);
% % f(:, :, 2)=Gc;
% % f(:, :, 3)=Bc;
% % figure, imshow(f);
% % %
% --------------------------------------------------------------------------
% % % % % % %ruidos en capas
% % % % % % [M, N]=size(R);
% % % % % % n=imnoise2('gaussian',M, N, 0.5, 0.1);
% % % % % % R2=autoadj(im2double(R) + n);
% % % % % % f(:, :, 1) = im2uint8(R2);
% % % % % % 
% % % % % % %ruidos en capas
% % % % % % 
% % % % % % n=imnoise2('salt & pepper',M, N, 0.5, 0.5);
% % % % % % B2=autoadj(im2double(B) + n);
% % % % % % f(:, :, 3) = im2uint8(B2);
% % % % % % 
% % % % % % figure,imshow(f);

%filtro promedioa a cada capa
f=imread('chalk.tif');
R=im2double(f(:,:,1));
G=im2double(f(:,:,2));
B=im2double(f(:,:,3));

%mask=ones(15, 15)/15^2;
%mascasra de filtro laplaciano, el laplaciano AUMENTA EL CONTRASTE

mask=[1 1 1;1 -8 1;1 1 1];
%ojo, el filtro laplaciano se RESTA
R2=im2uint8(R-imfilter(R, mask, 'replicate'));
G2=im2uint8(G-imfilter(G, mask, 'replicate'));
B2=im2uint8(B-imfilter(B, mask, 'replicate'));
imshow(R)
figure, imshow(R2)
f(:, :, 1)=R2;
f(:, :, 2)=G2;
f(:, :, 3)=B2;



subplot(2, 2, 1);
imshow(f);
subplot(2, 2, 2);
imshow(R);
subplot(2, 2, 3);
imshow(G);
subplot(2, 2, 4);
imshow(B);
% 
% 1 hacer funcionar la camara
% GUI >> graphical user interface

% efectos de:original, 
%negativo, 
%filtro ganma(texbox de parametros), 
%mitad bien mitad borrosa(hemiyanopsia)
% , ver el espectro, 
%original mas ruido gaussiana,
%original mas ruido periodico,
%rotacion 90, 
%divicion imagen 4 veces
%  reduccion de colores(textbox de a cuantos)

%data=getdata
