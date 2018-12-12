clear all
close all
clc

f = imread('bld.tif');

PQ = paddedsize(size(f)); %Padding
F = fft2(f,PQ(1),PQ(2)); %Trans Fourier
Fc = fftshift(F);       %Centrar F
S = log(1+abs(Fc));      %Espectro + filtro log

%Filter
H=lpfilter('ideal',PQ(1),PQ(2),100);
G = F.*H;

g = real(ifft2(G));%Transformada inversa de fourier Y convercion a reales.
[M N] = size(f);
g = g(1:M,1:N);


G = fft2(g,PQ(1),PQ(2)); %Trans Fourier
Gc = fftshift(G);       %Centrar F
Sg = log(1+abs(Gc));      %Espectro + filtro log

M1 = -M/2:M/2;
N1 = -N/2:N/2;

subplot(2,2,1);
imshow(f)
title('F')
subplot(2,2,2);
imagesc(M1,N1,S)
colormap('gray')
title('Sf')
subplot(2,2,3);
imshow(g,[])
title('g')
subplot(2,2,4);
imagesc(M1,N1,Sg)
title('Sg')


