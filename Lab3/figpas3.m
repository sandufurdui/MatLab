function ans = figpas3( fig, pas ) 
tmax = 3*pi
t = [0:pas:tmax]; 
global t1
t1 = rand(1)*tmax
[x,y,z] = xyz(t); 
[x1,y1,z1] = xyz(t1); 
figure(fig);  
plot3(x,y,z, 'LineWidth',3); 
title(['Traiectoria punctului. pasul = ',num2str(pas)]);
xlabel('Axa X'); 
ylabel('Axa Y'); 
zlabel('Axa Z'); 
grid on; 
axis equal
hold on
plot3(x1,y1,z1,'r*', 'LineWidth',3); 
title(['Traiectoria. Pozitia punctului pentru t1 = ',num2str(t1)])
hold off
