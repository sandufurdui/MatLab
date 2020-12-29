% Pe plan ecuatia diferentiala este mxpp=P-mgsin(a)-fmgcos(a)
% Vom solutiona simbolic ecuatia diferentiala pentru a determina lungimea
% segmentului AB si viteza de iesire.
m=0.5; alfa=30; f=0.1; P=15; va=3;tau=0.11;g=9.81;h=1;k=0.5;
% Ecuatia diferentiala:xpp=P/m-gsin(pi/6)-0.1*10*cos(pi/6)
eqn='D2x=15/0.5-9.81*sin(pi/6)-0.1*9.81*cos(pi/6)';
% Conditiile initiale
inits='x(0)=0,Dx(0)=3';
x=dsolve(eqn,inits,'t');
% x va fi solutia simbolica a ecuatiei diferentiale
% 3.2. Determinam lungimea AB. Cind t=tau, punctul va fi ajuns la capatul
% B, deci, in acest moment x=AB.
syms t
AB=subs(x,t,tau);
disp(['AB =',num2str(AB),' metri.'])
% Vom inlocui acest moment de timp (tau) in derivata lui x pentru a
% determina vB:
dx=diff(x);
vb=subs(dx,t,tau);
disp(['vb =',num2str(vb),' m/s'])