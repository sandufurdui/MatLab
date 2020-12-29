clear all; close all;
tmin=0; tmax=45; t=[tmin,tmax];

r0=[0.7,0.3,1.4]; 
v0=[1.5,-0.4,0.39];
u0=[r0,v0]; % Vectorul conditiilor initiale

% Procedura de integrare
[t,u]=ode45('f2',t,u0);
% Interpretarea rezultatelor
% 2.1. Ecuatiile pentru x(t),y(t),z(t);
figure(1);
plot(t,u(:,1),'b--',t,u(:,2),'r:',t,u(:,3),'g-.','linewidth',1.5);
title('Graficul x=x(t), y=y(t),z=z(t)');
xlabel('t,sec');ylabel('x, y, z, m');
legend('x(t)','y(t)','z(t)');
% 2.2.Traiectoria 3D a punctului material
figure(2);
hold on
plot3(u(:,1),u(:,2),u(:,3),'linewidth',1.5);grid on;
title('Traiectoria punctului material');
xlabel('x,m');ylabel('y,m');zlabel('z,m');
% Vectorul vitezei initiale
quiver3(r0(1),r0(2),r0(3),v0(1),v0(2),v0(3),'linewidth',1.5);

% 2.3. Vom alege 2 momente de timp diferite. Acestora le corespund 2 
% pozitii din vectorul t:
n=20;
quiver3(u(n,1),u(n,2),u(n,3),u(n,4),u(n,5),u(n,6),'linewidth',1.5)
n=70;
quiver3(u(n,1),u(n,2),u(n,3),u(n,4),u(n,5),u(n,6),'linewidth',1.5)
legend('Traiectoria','v0','v1','v2')