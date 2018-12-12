%hay 6 tipos de ruido, gauss, releigh, gamma, exponenecial, uniforma,
%impulsional
clear all
close all
clc
%g(x, y) = f(x, y) + n(x, y) f imagen n ruido, g imagen ruidosa
%n=imnoise2(gaussio=an, m, n, media, desvestandar
 %f = im2double(imread('Patt1.jpg'));
f = im2double(rgb2gray(imread('mumu.jpg')));
imshow(f);
[M N]=size(f);
%n=imnoise2('gaussian', M, N, 0.5, 0.1);%gaussian, media, desvestandar
%n=imnoise2('rayleigh', M, N, 0.1, 0.2);%rayleigh, a, b
%n=imnoise2('erlang', M, N, 7, 2);%erlang, a, b
%n=imnoise2('exponential', M, N, 7);%exponential, a, b
% n=imnoise2('uniform', M, N,0.25, 0.75);%uniform, a, b
% n=imnoise2('salt & pepper', M, N, 0.5, 0.5);%salt & pepper, a, b
%g=f+n;
%figure, imshow(g, []);

% ruido freq o periodico, S espectro, C
C=[0 50 ;100 100;50 0];
[n, R, S] = imnoise3(M, N, C);%n patron espacial, r transformada fourier
subplot(1, 2, 1);
imshow(n, []);
subplot(1, 2, 2)
imshow(S, []);
n2=autoadj(n);%self made function

g=f+n2;
figure,imshow(S, []);

%identificar ruido imagen