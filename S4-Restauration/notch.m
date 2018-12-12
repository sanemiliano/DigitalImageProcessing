%paso de datos, PQ's -- paddings
%paso de datos, \ � / => (slant 0 � 1)
%paso de datos, X e Y del pasador de banda en pixeles, valor de 0 a 1
%               1 es el centro y 0 en la esquina
%paso de datos, radio del pasador en pixeles

%se contruye con ffshift incuido, debe de usarse dentro de un ifftshift
% M1 | M2
% ------
% M3 | M4
%La funci�n regresa s�lo la m�scara para emplear el filtrado

function[Mf] = notch(PQ_rhs,slant_rhs,pos_rhs,rad_rhs)
rad=rad_rhs;
PQ=PQ_rhs;
slant=slant_rhs;
pos=pos_rhs;

M=zeros(PQ(1)/2,PQ(2)/2);       %se genera el cuadrante negro
Mpad=zeros(PQ(1)/2+2*rad,PQ(2)/2+2*rad); %cuadrante para trabajar, padding extra de gama�o rad
XY =[PQ(1)*pos/2+rad PQ(2)*pos/2+rad]; %se obtiene la posici�n del centro de los c�rculos 
%prevenci�n de salida de rango
if(XY(1)>PQ(1)/2)
    XY(1)=PQ(1)/2;
end
if(XY(2)>PQ(2)/2)
    XY(2)=PQ(2)/2;
end

%GENERACI�N DE CIRCULO/////////////////////////

X = ones(2*rad+1,1)*[-rad:rad]; 
Y = [-rad:rad]'*ones(1,2*rad+1); 
Z = X.^2 + Y.^2; 
CIRC = zeros(2*rad+1); 
CIRC(find(Z <= rad^2)) = 1; 
%//////////////////////////////////////////////

%colocaci�n del c�rculo dentro del cuadrante de trabajo
Mpad(XY(1):XY(1)+2*rad,XY(2):XY(2)+2*rad)=CIRC;

%crop del cuadrante de trabajo hacia el cuadrante con el c�rculo final
Mw=Mpad(rad:size(Mpad,1)-rad-1,rad:size(Mpad,2)-rad-1);

%dependiendo si la diagonal es \ � / se entra en uno de estos if's, donde
%se definen todos los cuadrantes
if(slant==1)
    M1=M;
    M4=M;
    M2=fliplr(Mw);
    M3=flipud(Mw);
else
    M2=M;
    M3=M;
    M1=Mw;
    M4=flipud(fliplr(Mw));
end;
%concatenaci�n de cuadrantes
Mf=ifftshift([M1 M2;M3 M4]);




