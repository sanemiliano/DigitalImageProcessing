clear all
close all
clc

A = imread('calculator.tif');
imshow(A)

T = graythresh(A); %% Es el munto "medio. El resulatdo debe estar normalizado
f = imadjust(A,[T;T+1e-4],[0;1]);
imshow(f)

B = strel('line',40,0);
C = imerode(f,B);
D = imreconstruct(C,f);
%figure, imshow(D)
E = f-D; % f -D
figure, imshow(E)

%etapa 2
B = strel('line',4,0);
C = imerode(E,B);
%figure, imshow(C)
D = imreconstruct(C,E);
figure,, imshow(D);

