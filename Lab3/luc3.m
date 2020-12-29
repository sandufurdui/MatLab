clear all
close all
clc
%Exercitiul 1
x=[0.05:0.05:1];
y=myf(x);
figure(1)
plot(x,y)
grid on;
xlabel('x');
ylabel('y');
title('f(x) = 2*sin(1/(2*x)), PLOT'); 
figure(2)
fplot('myf',[0.05,1])
grid on;
xlabel('x');
ylabel('y');
title('f(x) = 2*sin(1/(2*x)), FPLOT')

%Exercitiul 2
figpas(3,0.05)
global t1
%Viteza v
syms t
[x,y]=xy(t);
vx = diff(x);
vy = diff(y);
v = sqrt(vx^2 + vy^2); 
%Acceleratia 
ax = diff(vx);
ay = diff(vy); 
a = sqrt(ax^2 + ay^2); 
%Acceleratia Tangentiala 
at = (ax*vx+ay*vy)/v;
%Acceleratia Normala 
an = sqrt(a^2 - at^2); 
%Raza de Curbura 
r = v^2/an;
t = t1;
v1 = eval(v);
a1 = eval(a);
at1 = eval(at);
an1 = eval(an);
r1 = eval(r);
table(v1,a1,at1,an1,r1)

%Exercitiul 3
figpas3(4,0.05)
global t1
%Viteza v
syms t
[x,y,z]=xyz(t);
vx = diff(x);
vy = diff(y);
vz = diff(z); 
v = sqrt(vx^2 + vy^2 + vz^2); 
%Acceleratia 
ax = diff(vx);
ay = diff(vy); 
az = diff(vz);
a = sqrt(ax^2 + ay^2 + az^2); 
%Acceleratia Tangentiala 
at = (ax*vx+ay*vy+az*vz)/v;
%Acceleratia Normala 
an = sqrt(a^2 - at^2); 
%Raza de Curbura 
r = v^2/an;
t = t1;
v1 = eval(v);
a1 = eval(a);
at1 = eval(at);
an1 = eval(an);
r1 = eval(r);
table(v1,a1,at1,an1,r1)