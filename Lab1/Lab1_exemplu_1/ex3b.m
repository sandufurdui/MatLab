clc
clear all
close all
%calculul simbolic
syms t
[x,y,z]=xyz(t);
vx=diff(x);
vy=diff(y);
vz=diff(z);
ax=diff(vx);
ay=diff(vy);
az=diff(vz);
v=sqrt(vx.^2+vy.^2+vz.^2);
a=sqrt(ax.^2+ay.^2+az.^2);
at=(ax.*vx+ay.*vy+az*vz)./v;
an=sqrt(a.^2-at.^2);
r=v.^2./an;
%Calculul numeric
tmax=4*pi;
t=0:0.05:tmax;
t1=tmax*rand(1)
t=t1
v1x=eval(vx);
v1y=eval(vy);
v1z=eval(vz);
disp(['Datele vit, ac tot, ac tan, ac norm, raza curburii 3D', [t']])
disp(['*****************************************************'])
disp(['Viteza:             -   ',num2str(eval(v)),' m/s '])
disp(['Acceleratia totala: -   ',num2str(eval(a)),' m/s^2'])
disp(['Acceleratia tan:    -   ',num2str(eval(at)),' m/s^2'])
disp(['Acceleratia normala:-   ',num2str(eval(an)),' m/s^2'])
disp(['Raza de curbura:    -   ',num2str(eval(r)),' m'])


