
clear all
close all
clc

f = im2double(imread('Patt1.jpg'));
imshow(f);
[M ,N]=size(f);

C=[0 50 ;100 100;50 0];
[n, R, S] = imnoise3(M, N, C);%n patron espacial, r transformada fourier
subplot(1, 2, 1);
imshow(n, []);
subplot(1, 2, 2)
imshow(S, []);
n2=autoadj(n);%self made function

g=f+n2;
figure,imshow(g,[]);

%identificar ruido imagen