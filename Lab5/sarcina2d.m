% procedura de rezolvare a sarcinii 2a
close all
% definim intervalul de timp
t=0:pi/20:300   ;
n=0;
for domega=[0.05,0.08,0.1]
  n=n+1;  
% definim un vector cu 3 coloane, corespunzator x1, x2 si x3
[x1,x2,x3]=fbataie(t,domega);
figure(n);
plot(t,x3,'-k','LineWidth',1);
axis equal
legend('x1+x2');
title(['Oscilatie-bataie cu diferenta dintre pulsatie de ',num2str(domega),' rad']);
xlabel('t, sec');
ylabel('x, m');
end