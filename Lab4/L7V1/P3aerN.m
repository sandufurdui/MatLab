% Vom elabora functia f3 in baza ecuatiilor 
% Pe x: max=-k*xp
% Pe y: may=-mg-k*yp
clear all; close all;
global k;
tmin=0; tmax=0.8281; % tmax este timpul de zbor
t=[tmin,tmax];h=1;
r0=[0,h]; 
v0=[4.91,2.84];
z0=[r0,v0]; % Vectorul conditiilor initiale
% Procedura de integrare
% Cu rezistenta:
k=0.5;
[t,z]=ode45('f3',t,z0);
% Traiectoria punctului in aer:
figure(1);
plot(z(:,1),z(:,2),'linewidth',1.5);grid on;
title('Traiectoria punctului material in aer cu rezistenta');
xlabel('x, m'); ylabel('y, m');