clear all; close all;
% Intervalul de integrare
tmin=0; tmax=2; t=[tmin,tmax];
% Conditiile initiale
x0=0;y0=0; v0=2; v0x=v0*cos(pi/4); v0y=v0*sin(pi/4);
z0=[x0,y0,v0x,v0y];
% Procedura de integrare
[t,z]=ode45('f1',t,z0);
% Interpretarea rezultatelor
%  1.1. functiile x=x(t), y=y(t);
figure(1);
plot(t,z(:,1),'r-.','linewidth',1.5); grid;
xlabel('t,sec');ylabel('x,m');
hold on
plot(t,z(:,2),'b','linewidth',1.5); grid;
xlabel('t,sec');ylabel('x,m');
title('Graficul dependentelor x=x(t) si y=y(t)');
legend('x(t)','y(t)');
% 1.2. Dependentele vx(t),vy(t)i v(t)
figure(2);
v=sqrt(z(:,3).^2+z(:,4).^2);
hold on;
plot(t,z(:,3),'k-.','linewidth',1.5);grid;
plot(t,z(:,4),'r:','linewidth',1.5);grid;
plot(t,v,'b','linewidth',1.5);grid;
xlabel('t,sec');ylabel('vx, vy, v, m/sec');
title('Graficul vitezei');
legend('vx','vy', 'v');
% 1.3. Traiectoria punctului material
figure(3);axis equal
hold on;
plot(z(:,1),z(:,2),'k','linewidth',1.5);grid;
xlabel('x,m');ylabel('y,m');
title('Traiectoria punctului material');
% Vectorul vitezei initiale
quiver(0,0,v0x,v0y)
% Pentru alt punct al traiectoriei, selectam o anumita valoare a lui t
% Timpul este inclus intr-un vector, iar fiecarei valori a timpului ai
% corespunde o anumita pozitie. Fie n=40.
n=40;
t1=t(n);
% Cautam valorile lui vx si vy care corespund acestei pozitii
vx=z(n,3);
vy=z(n,4);
v1=sqrt(vx^2+vy^2);
% Construirea vectorilor. Originea vectorului va fi x, y pentru n=40
quiver(z(n,1),z(n,2),vx,0);
quiver(z(n,1),z(n,2),0,vy);
quiver(z(n,1),z(n,2),vx,vy);
legend('y(x)','v0','vx','vy','v')