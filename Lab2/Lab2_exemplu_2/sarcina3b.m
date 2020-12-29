% Procedura de compunere a doua oscilatii armonice reciproc perpendiculare
clear all
close all
% definim intervalul de timp
t=0:pi/300:300;
figure(1);
n=0;
for dalfa=[0,pi/6,pi/4,pi/3,pi/2,2*pi/3,3*pi/4,5*pi/6,pi];
    n=n+1;
    subplot(3,3,n);
    format rat
    [x,y]=f3b(t,dalfa);
    plot(x,y,'-k','LineWidth',1.5);
    title(['\Delta \alpha = ',num2str(dalfa)]) 
    axis square
    xlabel('t, sec');
    ylabel('x, m');
end