% Procedura de compunere a doua oscilatii armonice reciproc perpendiculare
close all
% definim intervalul de timp
t=0:pi/300:10;
n=0;
for dalfa=[0,pi/6,pi/4,pi/3,pi/2,2*pi/3,3*pi/4,5*pi/6,pi];
    n=n+1;
    figure(n);
    [x,y]=f3c(t,dalfa);
    title(['\Delta \alpha = ',num2str(dalfa)]) 
    comet(x,y);
    axis square
    xlabel('t, sec');
    ylabel('x, m');
end
close all