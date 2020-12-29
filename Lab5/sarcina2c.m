% procedura de rezolvare a sarcinii 2a
close all
% definim intervalul de timp
t=0:pi/200:5;
n=0;
for dalfa=[0, pi/6,pi/4,pi/3,pi/2,2*pi/3,3*pi/4,5*pi/6,pi];
  n=n+1;  
% definim un vector cu 3 coloane, corespunzator x1, x2 si x3
[x1,x2,x3]=fcoer_dalfa(t,dalfa);
figure(n);
plot(t,x1,':r',t,x2,'--b',t,x3,'-k','LineWidth',1.5);
legend('x1','x2','x1+x2');
title(['Compunerea oscilatiilor coerente cu ','\Delta\alpha =', num2str(dalfa),' rad']);
xlabel('t, sec');
ylabel('x, m');
end