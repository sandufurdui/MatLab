% Furdui Alexandru, FAF-192, V 10
% Laborator Nr.1
% Exercitiul Nr.1
% Exercitiul Nr.2
format compact
clear all;clc
x = -1.75*10^(-3);
y = 3.1*pi;
% Expresiile intr-un rand:
a=(x+log(abs(cos (y)))/(x+abs(cot(y))))^2.5+((x+abs(cot(y))^3)/(x+log(abs(cos(y)))))^(1/5);
disp(['Expresia intr-un rand: A = ',num2str(a)])
% Expresiile optimizate prin variabile intermediare:
k=log(abs(cos(y)));
j=abs(cot(y));
a=((x+k)/(x+j))^2.5+((x+j^3)/(x+k))^(1/5);
disp(['Prin var intermed: A = ',num2str(a)])
% Rezultatul in diferite formate:
disp('formatul hex:')
format hex, a
format bank, a
format rat, a
format short, a

z=coth(((x^2+cos(y)*cos(y))^2/(abs(x)+sin (y))))+((abs(x)+sin(y))/(x^2+cos(y)*cos(y)))^2.3;
disp(['Expresia intr-un rand: Z = ',num2str(z)])
% Expresiile optimizate prin variabile intermediare:
k=cos(y)*cos(y)+x^2;
j=abs(x)+sin(y);
z=coth(k^2/j)+(j/k)^2.3;
disp(['Prin var intermed: Z = ',num2str(z)])
% Rezultatul in diferite formate:
disp('formatul hex:')
format hex, z
format bank, z
format rat, z
format short, z

% Comanda whos:
whos
clear all
% Exercitiul 3.
disp('------------Ex.3------------')
N = 8; l_sus = 2; l_jos = 0;
pas = (l_sus-l_jos)/(N-1);
x = [l_jos:pas:l_sus]
y = 2.*sin(x.^2).*cos(x.^2+1)


% Concluzie: 
% am luat cunostinta cu mediul de lucru matlab si la fel am luat cunostinta
% cu 
%
