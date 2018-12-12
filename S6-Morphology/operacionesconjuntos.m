clear all
close all
clc

A=imread('A.tif');
B=imread('B.tif');
C=imread('B.tif');

%C=~A; % not A
%C=not(A); % not A

%C=A|B; % A union B, A or B
%C=or(A,B); % A union, B or B

%C=A&B; % A intersction B, A and B
%C=and(A,B); % A intersction B, A and B

%C=A-B; %  A minu B
%C=~(A|B)&~B; % ~(AUB)n~B


subplot(1,3,1)
imshow(A)

subplot(1,3,2)
imshow(B)

subplot(1,3,3)
imshow(C)