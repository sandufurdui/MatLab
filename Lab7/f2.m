function der3=f2(t,u)
x=u(1);
y=u(2);
z=u(3);
xp=u(4);
yp=u(5);
zp=u(6);
P=[-0.35*x,-0.5*y,-0.5*z];
C=-0.15;
R=C*[u(4),u(5),u(6)];
Rez=P+R;
m=1.5;
xpp=Rez(1)/m;
ypp=Rez(2)/m;
zpp=Rez(3)/m;
der3=[xp;yp;zp;xpp;ypp;zpp];
end