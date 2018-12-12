clear all
close all
clc

f = im2double(imread('P4c.tif'));

[ M, N ] = size(f);

c = [0 5; 5 0];
[n ,R, S] = imnoise3(M, N, c);
% n -> spatial pattern
% R -> Fourier transform
% S -> Spectrum

n = autoadj(n); % gets values into a [ 0, 1 ] range

g = f + n;

figure
subplot(1,3,1);
imshow(n, []);

subplot(1,3,2);
imshow(S, []);

subplot(1,3,3);
imshow(g, []);