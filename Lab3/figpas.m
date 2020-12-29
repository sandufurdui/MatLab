function [] = figpas( fig, pas ) 
tmax = 4*pi
t = [0:pas:tmax]; 
global t1
t1 = rand(1)*tmax  
[x,y] = xy(t); 
[x1,y1] = xy(t1); 
figure(fig);  
plot(x,y, 'LineWidth',2); 
title(['Traiectoria punctului. pasul = ',num2str(pas)]);
xlabel('Axa X'); 
ylabel('Axa Y'); 
grid on; 
axis equal
hold on
plot(x1,y1,'r*', 'LineWidth',2)
title(['Traiectoria. Pozitia punctului pentru t1 = ',num2str(t1)])
hold off

