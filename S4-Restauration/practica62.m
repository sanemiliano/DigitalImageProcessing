clear all
close all
clc

f=imread('turbulence1.jpg');
f=im2double(f);
imshow(f);

H=fspecial('motion', 100, 0);%agregamos ruido de movimiento
%el numero define el angulo del ruido, siendo 0 horizontal, 90 vertical
g=imfilter(f, H, 'circular');
%figure, imshow(g);  %imagen con ruido
% caso1:H=1
% g=f+n
% caso 2: H !=0
% 2.1 n=0   g=fh
% 2.2  n!=0   g=fh + n  ?

for X=5:5:90,
    for th=5:5:60,
    H=fspecial('motion', X, th)
    fe=deconvwnr(g, H);
    imshow(fe); 
    title(sprintf('x=%d and th=%d', X, th))
    pause(0.1)
    end
end




