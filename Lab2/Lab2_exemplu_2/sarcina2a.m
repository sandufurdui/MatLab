% procedura de rezolvare a sarcinii 2a
% Inchidem toate ferestrele anterioare
close all
% definim intervalul de timp
t=0:pi/200:10;
% definim un vector cu 3 coloane, corespunzator x1, x2 si x3
[x1,x2,x3]=fnecoer(t);
figure(1);
plot(t,x1,':r',t,x2,'--b',t,x3,'-k','LineWidth',1.5);
legend('x1','x2','x1+x2');
title('compunerea oscilatiilor necoerente');
xlabel('t, sec');
ylabel('x, m');
grid on