clear all
close all
clc

F = double(imread('P4a.tif'));
[ M, N ] = size(F);
aux1 = F(:,1:N/2);
aux2 = F(:,N/2+1:N);

w = [1 2 1; 2 4 2; 1 2 1];
w = w * (1/16);

R = imgaussfilt(aux1,4);
mixed =[R aux2];
figure, imshow(uint8(mixed))