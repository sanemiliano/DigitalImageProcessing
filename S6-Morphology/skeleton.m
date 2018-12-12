clear all
close all
clc

A=imread('bone.tif');
%subplot(1,2,1)
imshow(A)

Pattern=strel('disk',15);

Ares=bwmorph(A,'skel',inf); %% thin the image
Endpoints = endpoints(Ares); %% gives you the endpoints of the bones
%subplot(1,2,2)
imshow(Ares)