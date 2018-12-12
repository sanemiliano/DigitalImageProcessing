clear all
close all
clc

billeteOk = double(imread('BilleteOk.tif'));
billeteRevisar = double(imread('Billete5.tif'));
comparacion = billeteRevisar - billeteOk;

subplot(1,3,1);
imshow(uint8(billeteOk))
title('MuestraPerfecta')

subplot(1,3,2);
imshow(uint8(billeteRevisar))
title('A comparar')

subplot(1,3,3);
imshow(uint8(comparacion))
if(comparacion == 0)
    title('Correcto')
else
    title('Incorrecto')
end
    
