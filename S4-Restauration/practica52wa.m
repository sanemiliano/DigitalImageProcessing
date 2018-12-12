%identificador ruido
clear all
close all
clc

f=imread('Im1.jpg');
imshow(f);

% para ruido normal
% [B, c, r]=roipoly(f);% B region recortada por el poligono
% imshow(B);
% [p np]=histroi(f, c, r);
% figure, bar(p);

%im1 gaussiano
%im2 erleigh
%im3 erlang
%im4 exponencial
%im5 uniforme
%im6 salt & pepper


%para ruido periodico..
%codigo para hallar el espectro
 F = fft2(f);%fast fourier transform 2D, 
 Fc=fftshift(F); %centrar F
 S=abs(log( 1 +abs(Fc)));   %obtiene el espectro, y lo aclara el filtro logaritmico
 figure, imshow(S, []);