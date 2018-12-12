clear all
close all
clc
%%Nos queremos quedar con los circulos
%%Lo que hacemos es erosionar hasta quedarnos con un puntito y
%%reconstruirla hasta la original.

%%MORPHOLOGICAL RECONSTRUCTION
A = imread('shapes2.tif');
imshow(A);

B = strel('disk',18); %Elemento estructural,

%Paso 1, solo una erosion
C1 = imerode(A,B); %Erosion de A por B
figure,imshow(C1)

%Opcion 2, reconstrucion a partir de la imagen erosionada y la original
recon = imreconstruct(C1,A); %Imagen erosionada y la original
figure, imshow(recon)