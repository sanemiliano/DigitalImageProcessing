%primera clase despues delk examen
% ruido
clear all
close all
clc

% f=imread('noisy_image3.jpg');
% imshow(f)
% 
% % %para identificar el ruido
% % [B, c, r]=roipoly(f);
% % imshow(B);
% % [p, np]=histroi(f, c, r);
% % figure, bar(p);
% 
% 
% 
% g=spfilt(f, 'amean', 3, 3); %filtro aritmetico
% g=spfilt(f, 'gmean', 3, 3); %filtro geometrico
% %ambos filtros quitan ruido gausiano o uniforme, utilizando un suavizado

%%tambien se puede utilizar:
%g=spfilt(f, 'midpoint', 3, 3);
% 
% 
% figure, imshow(g);
% -----------------

% f=imread('noisy_image4.jpg');
% imshow(f)
% 
% g=spfilt(f, 'chmean', 3, 3, 0.2); %filtro contraharmonico
% %utilizado para salt pepper, Q tiene q ser mayor que 0 para pimienta, menor
% %que 1 para sal

%------------------
% f=imread('noisy_image4.jpg');
% imshow(f)
% 
% g=spfilt(f, 'chmean', 3, 3, 0.2); %filtro contraharmonico
% %utilizado para salt pepper, Q tiene q ser mayor que 0 para pimienta, menor
% %que 1 para sal
%esta fue pimietna


% figure, imshow(g);

% f=imread('noisy_image5.jpg');
% imshow(f)
% 
% g=spfilt(f, 'chmean', 3, 3, -3); %filtro contraharmonico
% %sal

% figure, imshow(g);
%------------------
%sal y pimienta
% f=imread('noisy_image6.jpg');
% imshow(f)
% 
% g=spfilt(f, 'median', 5,5); %filtro mediano
% figure, imshow(g);

%de la misma manera, pimienta se puede quitar con:
%g=spfiltp(f, 'max', 3, 3)
%y la sal con:
%g=spfiltp(f, 'min', 3, 3)

%---------------------
% %combinacion de ruidos
% f=imread('noisy_image7.jpg');
% imshow(f)
% 
% g=spfilt(f, 'atrimmed', 5, 5, 22); %filtro alfatrimean

%------------------------
% %filtro universal, funciona en todos
% f=imread('noisy_image8.jpg');
% imshow(f)
% g=adpmedian(f, 5);%el numero es el tamanio del cuadro de muestra
% figure, imshow(g);

%----------------------

% % % %volviendo a ruido frecuencial
% % % %tenemos los filtros lowpass, highpass, etc
% % % %este es un nuevo filtro, llamado notch. basicametne permite pasar circulos
% % % %en cuadrantes especificos
% % % %paramettros=padding, direccion, distancia al centro, radio
% % % 
% % % f=imread('noisy_image1.jpg');
% % % % f=rgb2gray(f);
% % % imshow(f);
% % % % 
% % % %  F = fft2(f);%fast fourier transform 2D, 
% % % %  Fc=fftshift(F); %centrar F
% % % %  S=abs(log( 1 +abs(Fc)));   %obtiene el espectro, y lo aclara el filtro logaritmico
% % % %  figure, imshow(S, []);
% % % 
% % % %espectro
% % %  PQ=paddedsize(size(f));        % padding
% % %  F= fft2(f, PQ(1), PQ(2));     %Trans Fourier
% % %  Fc=fftshift(F);              %centrar F
% % %  S=abs(log( 1 +abs(Fc)));   %obtiene el espectro, y lo aclara el filtro logaritmico
% % %  figure, imshow(S, []);
% % % % 
% % % %filter de frecuenca
% % %  H=1-notch(PQ, 1, 0.2,50);
% % %  %pq, direccion, distancia centro, radio
% % %  %direccion es 0 o 1, para definir cuadrantes; dist es 0 orilla 1 centro
% % % G=F.*H;
% % % 
% % % g = real(ifft2(G));%inversa de la transformada
% % % %figure, imshow(g, []);
% % % [M N] = size(f);
% % % g=g(1:M, 1:N);  %restaurar tamanio original
% % % figure, imshow(g, []);
% % % % 
% % % G= fft2(g, PQ(1), PQ(2));     %Trans Fourier
% % % Gc=fftshift(G);              %centrar G
% % % Sg=abs(log( 1 +abs(Gc)));   %obtiene el espectro, y lo aclara el filtro logaritmico
% % % figure, imshow(Sg, []);
% % % 
% % % M1=-M/2:1:M/2
% % % N1=-N/2:N/2
% % % subplot(2, 2, 1)
% % % imshow(f)
% % % title('f')
% % % subplot(2, 2, 2)
% % % imshow(S, [])
% % % imagesc(M1, N1, S)
% % % title('Sf')
% % % subplot(2, 2, 3)
% % % imshow(g, [])
% % % title('g')
% % % subplot(2, 2, 4)
% % % imshow(Sg, [])
% % % imagesc(M1, N1, Sg)
% % % title('Sg')

%-----------------------------------


