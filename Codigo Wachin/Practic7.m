close all
clear all
clc

f=im2double(imread('turbulence2.jpg'));
imshow(f);

%ruido de movimiento
H=fspecial('motion', 100, 0);
fm=imfilter(f, H, 'circular');
figure, imshow(fm);

%ruido gaussiano
[M N]=size(f);
n=imnoise2('gaussian', M, N, 0.5, 0.1);
g=fm + n;
g=autoadj(g);
figure, imshow(g);

%aplicamos filtro medium point, luego la para quitr el movimiento.....y no
%lo hace

%la respuesta es la formula de weiner, hay que hallar NCORR(trasformada de
%fourier inversa del espectro(transformada de fourier delruido al
%cuadrado)) y FCORR(lo mismo pero de la imagen original)

Sn=abs(fft2(n)).^2;
NCORR=fftshift(real(ifft2(Sn)));


Sf=abs(fft2(f)).^2;
FCORR=fftshift(real(ifft2(Sf)));


fe = deconvwnr(g, H, NCORR, FCORR);
figure, imshow(fe);


