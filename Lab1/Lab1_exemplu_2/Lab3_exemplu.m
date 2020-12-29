% Laborator Nr.3 MatLab.
clear all
close all
clc
% Exercitiul 1 (pag 79):
% declaram file-functia f1.
% 1.1. Cu plot:
% declaram intervalul pentru x, cu pasul 0.05:
x = [0:0.05:1];
% apelam functia f1 pentru a calcula y:
y = f1(x);
% graficul traiectoriei:
figure(1)
plot(x,y,'r*-'); xlabel('x');ylabel('f(x)'); 
title('f(x) = exp(3*x*sin(5*pi*x)), PLOT, pas = 0.05'); grid
% 1.2. Cu fplot:
% vom deschide o figura noua, in care trasam graficul functiei cu fplot
figure(2)
fplot('f1',[0,1],'b*-'); xlabel('x'); ylabel('f(x)');
title('f(x) = exp(3*x*sin(5*pi*x)), FPLOT');grid

%************************************************************************
% EXERCITIUL 2:
% Cream file-functia xy cu parametrul de intrare-t
% Cream file-functia figpas. Aceasta functie nu va returna
% o valoare anumita. Va executa doar anumite operatii

% 2.a) Experimentam pentru diferite valori ale pasului
figpas(3,0.05)

% 2 b). Intrucat momentul de timp t1 se declara in figpas,
% vom declara aceasta variabila globala, pentru a o utiliza aici 
global t1

% 3. Caracteristicile cinematice ale punctului in 
% momentul de timp t1. Trecem la calcul simbolic (t). Apoi
% vom chema functia xy pentru a redefini ecuatiile de miscare
% in mod simbolic. Apoi derivarea si calculul valorilor pentru
% momentul de timp t1
syms t
[x,y] = xy(t);
% Viteza: 
vx = diff(x); vy = diff(y); v = sqrt(vx^2+vy^2);
% Acceleratia
ax = diff(vx); ay = diff(vy); a = sqrt(ax^2+ay^2);
% Acceleratia tangentiala:
at = (ax*vx+ay*vy)/v;
% Acceleratia normala:
an = sqrt(a^2-at^2);
% Raza de curbura
ro = v^2/an;
% Toate expresiile de mai sus sunt calculate simbolic
% Pentru momentul de timp t1 ele vor avea valorile:
t = t1;
disp(['*****************************************************'])
disp(['Caract. cinemat. pentru t1 = ', num2str(t1),'s :'])
disp(['Viteza       : ',num2str(eval(v)),' m/s '])
disp(['Acceleratia  : ',num2str(eval(a)),' m/s^2'])
disp(['Accel. tan   : ',num2str(eval(at)),' m/s^2'])
disp(['Accel. norm. : ',num2str(eval(an)),' m/s^2'])
disp(['Raza de curb.: ',num2str(eval(ro)),' m'])
% Sau, rezultatul poate fi prezentat sub forma de tabel:
v1 = eval(v);
a1 = eval(a);
at1 = eval(at);
an1 = eval(an);
ro1 = eval(ro);
table(v1,a1,at1,an1,ro1)


% Concluzie:...........