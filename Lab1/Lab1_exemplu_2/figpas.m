function [] = figpas(fig,pas)
% intervalul de timp. Vom defini tmax
tmax = 4*pi;

% 1. Traiectoria:
t = [0:pas:tmax];
% apelam functia xy pentru a calcula coordonatele x, y
[x,y] = xy(t);


figure(fig)
plot(x,y,'LineWidth',2); xlabel('x, m');ylabel('y, m');
title(['Traiectoria punctului. pasul = ',num2str(pas)]);grid on; axis equal

% 2. pozitia punctului pentru un moment de timp aleator
global t1
t1 = rand(1)*tmax;

% pentru acest moment de timp, calculam iarasi coordonatele
[x1,y1] = xy(t1);
% Si le punem pe traiectorie:
hold on
plot(x1,y1,'r*', 'LineWidth',2)
title(['Traiectoria. Pozitia punctului pentru t1 = ',num2str(t1)])
hold off



