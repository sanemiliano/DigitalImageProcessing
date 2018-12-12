
f = imread('Patt3.tif');
imshow(f)

[H,theta,rho] = hough(f);
imagesc(theta,rho,H)
axis on
xlabel('\theta')
ylabel('\rho')

[r,c] = houghpeaks(H,5);
hold on
plot(theta(c),rho(r),'sw');

lines = houghlines(f,theta,rho,r,c);
figure,imshow(f),hold on
for k =1: lenght(lines),
	xy = [lines(k).point1;lines(k).point2];
	plot(xy(:,2),xy(:,1),'Linewidth',4,'color',[0 1 0]);
end