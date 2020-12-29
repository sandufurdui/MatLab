function der=f1(t,z)
x=z(1);
y=z(2);
xp=z(3);
yp=z(4);
F1=[-0.5*x,-0.5*y];
F2=[0.7*x,-1.4*y];
Rez=F1+F2;
m=1.5;
xpp=Rez(1)/m; % legea a II-a Newton ax=(F1x+F2x)/m. Vectorii se sumeaza si
% prima pozitie din vectorul rezultantei este proiectia ei pe x
ypp=Rez(2)/m;
der=[xp;yp;xpp;ypp];
end