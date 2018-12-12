close all
clear all
clc

f = imread('face.jpg');
A = rgb2gray(f);

T = .35 %graythresh(A);
J = imadjust(A,[T;T+1e-4],[1;0])
%imshow(J)

X = imfill(J,'holes');
imshow(X)

B = strel('disk',15);
C = imerode(X,B);
figure,imshow(C)

D = imreconstruct(C,x);
figure , imshow(D)

E = imsubtract(X,D);
figure, imshow(E)

B = strel('disk',20);
C = imerode(E,B);
figure, imshow(C)

D = imdilate(C,B);
figure, imshow(D)

f(:,:,2) =im2uint8( im2double(f(:,:,2)) + im2double(D));
imshow(f)
