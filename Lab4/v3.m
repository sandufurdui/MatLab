
% Traiectoria
t=[0:0.1:4*pi];
x=t-sin(t);
y=1-cos(t);
plot(x,y);
title ('gr 1');
xlabel ('x');
ylabel ('y');
legend('Traiectoria');
%pozitia
figure
t1=rand(1).*3;
x1=t-sin(t); 
y1=1-cos(t);

plot(x1,y1);
title ('gr 2');
xlabel ('x');
ylabel ('y');
legend('pozitia');
% viteza
figure
syms t;
vx=diff(x);
vy=diff(y);
title ('gr 3');
xlabel ('x');
ylabel ('y');
legend('Viteza');

%valorile pu t1
v1x=eval(vx);
v1y=eval(vy);
eval(vx);
eval(vy);
v1=sqrt(v1x^2+v1y^2)
