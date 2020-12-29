function figpas(fig,pas)
t=0:0.05:4*pi;
[x,y,z]=xyz(t);
figure
%Construim traiectoria punctului material
comet3(x,y,z);plot3(x,y,z)
hold on
%Determinam timpul de calcul si pozitia punctului
t=4*pi*rand
[x,y,z]=xyz(t);
%Construim pozitia punctului pe traiectorie
plot3(x,y,z,'ro-')
title(['t = ',num2str(t)])
hold on
grid on
xlabel('Timpul')
ylabel('Pozitia punctului')
legend('y=f(x),Traiectoria')