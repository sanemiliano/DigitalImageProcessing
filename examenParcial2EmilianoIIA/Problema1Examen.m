clear all
close all
clc

A=imread('shapes.tif');
subplot(1,2,1)
imshow(A)
hit1=[0 0 0; 
      0 1 0; 
      1 1 1];

hit2=[ 1 1 1; 
       0 1 0;
       0 0 0;];

hit3=[1 0 0; 
      1 1 0; 
      1 0 0;];

hit4=[0 0 1;
      0 1 1; 
      0 0 1
            ];
 
result=bwhitmiss(A,hit1,~hit1)|bwhitmiss(A,hit2,~hit2)|bwhitmiss(A,hit3,~hit3)|bwhitmiss(A,hit4,~hit4);
subplot(1,2,2)
imshow(result)
impixelinfo