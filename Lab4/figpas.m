function figpas(fig,pas)
t=0:0.05:4*pi;
[x,y]=xy(t);
figure
%Construim traiectoria punctului material
comet(x,y);plot(x,y)
hold on
%Determinam timpul de calcul si pozitia punctului
t=4*pi*rand
[x,y]=xy(t);
%Construim pozitia punctului pe traiectorie
plot(x,y,'ro-')

title(['t = ',num2str(t)])
hold on
grid on
xlabel('Timpul')
ylabel('Pozitia punctului')
legend('y=f(x),Traiectoria')