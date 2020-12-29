function aer=f3(t,z)
% vitezele
global k
xp=z(3);
yp=z(4);
m=1.5;
g=9.81;
% Pe x: max=-k*xp
% Pe y: may=-mg-k*yp
xpp=-k*xp/m;
ypp=(-m*g-k*yp)/m;
aer=[xp;yp;xpp;ypp];
end