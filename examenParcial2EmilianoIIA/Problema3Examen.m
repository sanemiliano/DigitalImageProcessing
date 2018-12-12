clear all 
close all
clc
Dcode

% X = 78 th = 40
H=fspecial('motion', 78, 40)
fe=deconvwnr(g, H);
imshow(fe);
% for X=2:2:92,
%     for th=4:4:92,
%     H=fspecial('motion', X, th)
%     fe=deconvwnr(g, H);
%     imshow(fe); 
%     title(sprintf('x=%d and th=%d', X, th))
%     pause(0.2)
%     end
% end
