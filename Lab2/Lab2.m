% Furdui Alexandru, FAF-192, V 10
% Laborator Nr.2
% Exercitiul Nr.1
% Exercitiul Nr.2

x=[-pi:0.2:6*pi];
d=log(abs(x));
f=x.^2.*sin(x);
g=x.*d;
%a
figure (1)
hold on
plot(x, f,'r.-')
title('graficul functiei f(x)')
xlabel('x'); ylabel('y');
grid on
figure (2)
hold on
plot(x, g,'g.-')
title('graficul functiei g(x)')
xlabel('x'); ylabel('y');
grid on
%b
figure (3)
plot(x, f,'r.-',x, g, 'g-')
title('graficul functiei x si g(x)')
xlabel('x'); ylabel('y');
legend('f(x)','g(x)')
grid on
%c1
figure (4)
hold on
subplot(3, 1, 1)
plot(x, f,'r.-')
title('graficul functiei f(x)')
xlabel('x'); ylabel('y');
grid on
hold on
subplot(3, 1, 2)
plot(x, g,'g.-')
title('graficul functiei g(x)')
xlabel('x'); ylabel('y');
grid on
subplot(3, 1, 3)
plot(x, f,'r.-',x, g, 'g-')
title('graficul functiei f(x) si g(x)')
xlabel('x'); ylabel('y');
legend('f(x)','g(x)')
grid on 
%c2
figure (5)
hold on
subplot(1, 3, 1)
plot(x, f,'r.-')
title('graficul functiei f(x)')
xlabel('x'); ylabel('y');
grid on
hold on
subplot(1, 3, 2)
plot(x, g,'g.-')
title('graficul functiei g(x)')
xlabel('x'); ylabel('y');
grid on
subplot(1, 3, 3)
plot(x, f,'r.-',x, g, 'g-')
title('graficul functiei f(x) si g(x)')
xlabel('x'); ylabel('y');
legend('f(x)','g(x)')
grid on 
%c3
figure (6)
hold on
subplot(2, 2, 1)
plot(x, f,'r.-')
title('graficul functiei f(x)')
xlabel('x'); ylabel('y');
grid on
hold on
subplot(1, 2, 2)
plot(x, f,'r.-',x, g, 'g-')
title('graficul functiei f(x) si g(x)')
xlabel('x'); ylabel('y');
legend('f(x)','g(x)')
grid on
subplot(2, 2, 3)
plot(x, g,'g.-')
title('graficul functiei g(x)')
xlabel('x'); ylabel('y');
grid on
 
%c4
figure (7)
hold on
subplot(2, 1, 1)
plot(x, f,'r.-')
title('graficul functiei f(x)')
xlabel('x'); ylabel('y');
grid on
hold on
subplot(2, 2, 3)
plot(x, g,'g.-')
title('graficul functiei g(x)')
xlabel('x'); ylabel('y');
grid on
subplot(2, 2, 4)
plot(x, f,'r.-',x, g, 'g-')
title('graficul functiei f(x) si g(x)')
xlabel('x'); ylabel('y');
legend('f(x)','g(x)')
grid on 
%Exercitiul nr.3
[x1, y1]=meshgrid(-pi:0.1:pi, 1:0.1:5)
z=2.*cos(x1).*log(y1)
figure (8)
mesh(x1, y1, z)
xlabel('x'); ylabel('y');zlabel('z');
figure (9)
surf(x1, y1, z)
xlabel('x'); ylabel('y');zlabel('z');
figure (10)
meshc(x1, y1, z)
xlabel('x'); ylabel('y');zlabel('z');
figure (11)
surfc(x1, y1, z)
xlabel('x'); ylabel('y');zlabel('z');
figure (12)
contour(x1, y1, z)
xlabel('x'); ylabel('y');zlabel('z');
figure (13)
contourf(x1, y1, z)
xlabel('x'); ylabel('y');zlabel('z');
figure (14)
contour3(x1, y1, z)
xlabel('x'); ylabel('y');zlabel('z');

%Concluzie
%In urma acestei lucrari de laborator, am invatat uneltele cu ajutorul 
%caror pot afisa grafice in diferite moduri





