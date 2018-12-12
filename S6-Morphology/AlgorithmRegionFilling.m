clear all
close all
clc


%Region filling algorithm
A = [0 0 0 0 0 0 0
    0 0 1 1 0 0 0
    0 1 0 0 1 0 0
    0 0 1 0 1 0 0
    0 0 1 0 1 0 0
    0 1 0 0 0 1 0
    0 1 0 0 0 1 0
    0 1 1 1 1 0 0
    0 0 0 0 0 0 0]
subplot(1,2,1)
imagesc(A)
colormap('gray')
B = strel('diamond',1);

[M N] = size(A)
X = zeros(M,N);
X(3,3) = 1;

flag = 0;

while flag == 0,
    subplot(1,2,2)
    imagesc(or(X,A))
    pause(.2)
    Xnew = imdilate(X,B) & ~A;
    if (Xnew -X) ==0
        flag = 1
    else X = Xnew;
    end
end
