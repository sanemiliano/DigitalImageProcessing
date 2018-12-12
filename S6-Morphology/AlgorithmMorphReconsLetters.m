clear all
close all
clc
%%Nos queremos quedar con los caracteres con las lineas mas largas.
%%Lo que hacemos es erosionar hasta quedarnos con un puntito y
%%reconstruirla hasta la original.

%%MORPHOLOGICAL RECONSTRUCTION
A = imread('book-text.tif');
imshow(A);

B = strel('line',50,90); %Elemento estructural,

%Opcion 1, solo una erosion
C1 = imerode(A,B); %Erosion de A por B
figure,imshow(C1)

%%Opcion 2, erosion y dilatacion (opening)
C2 = imopen(A,B);
figure,imshow(C2)

%Opcion 3, reconstrucion a partir de la imagen erosionada y la original
recon = imreconstruct(C1,A); %Imagen erosionada y la original
figure, imshow(recon)
