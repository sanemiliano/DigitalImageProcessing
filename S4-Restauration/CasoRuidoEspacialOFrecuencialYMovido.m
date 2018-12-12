clear all
close all
clc

f = imread('turbulence2.jpg');
f = im2double(f);
figure,imshow(f)

H = fspecial('motion',100,0);
fm = imfilter(f,H,'circular');
figure,imshow(fm)

[M N] = size(f);
n = imnoise2('gaussian',M,N,0.5,0.1);
g = fm + n;
g = autoadj(g);
imshow(g)

%%%%  NO SIRVE SI INTENTAMOS QUITAR EL RUIDO Y DESPUES ACOMDAR LA IMAGEN
%%%%  POR ESO VAMOS A UTILIZAR EL FILTRO DE WEINER, AL FILTRO DE WEINER LE
%%%%  TENEMOS QUE DAR EL RUIDO DE LA IMAGEN Y LA IMAGEN ORIGINAL.
Sn = abs(fft2(n)).^ 2;%%n = ruido
NCORR = fftshift(real(ifft2(Sn)));
Sf = abs(fft2(f)).^2;%f = imagen original
FCORR = fftshift(real(ifft2(Sf)));

fe = deconvwnr(g,H,NCORR,FCORR);
figure,imshow(fe);

