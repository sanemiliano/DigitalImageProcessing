clear all
close all
clc

fig1=imread('Fig1.tif');
fig2=imread('Fig2.tif');
fig3=imread('Fig3.tif');
fig4=imread('Fig4.tif');
%FIG3
res3 = spfilt(fig3, 'gmean', 3, 3); %filtro geometrico
imshow(res3)
% para ruido normal
[B, c, r]=roipoly(fig3);% B region recortada por el poligono
imshow(B);
[p np]=histroi(fig3, c, r);
figure, bar(p);
%Identificando ruido espacial
%FIG 2
res2=spfilt(fig2, 'chmean', 3, 3, 0.2); %filtro contraharmonico
imshow(res2)

res4=spfilt(fig4, 'chmean', 3, 3, 0.2); %filtro contraharmonico
imshow(res4)



