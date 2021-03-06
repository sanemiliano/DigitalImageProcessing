clear all
close all
clc

f = im2double(imread('Patt1.jpg'));
imshow(f)
[M N] = size(f);

%n = imnoise2('gaussian',M,N,0.5,0.1); %media, des std
%n = imnoise2('rayleigh',M,N,0.2,0.1); %a,b
%n = imnoise2('erlang',M,N,7,2); %a,b
%n = imnoise2('exponential',M,N,7); %a,
n = imnoise2('uniform',M,N,0.2,0.1);
%n = imnoise2('salt & pepper',M,N,0.2,0.1);
g = f + n;
figure,imshow(g,[])


%Ruido Freq
C = [0 5;5 0];
[n,R,S] = imnoise3(M,N,C);

subplot(1,2,1)
imshow(n,[])
subplot(1,2,2)
imshow(S,[])

n = autoadj(n);
g = f + n;
figure,imshow(g,[])
