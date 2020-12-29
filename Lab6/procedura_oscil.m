% Procedura de integrare
% 1. Intervalul de timp:
t = [0,500]; % secunde
% 2. Vectorul valorilor initiale.
v0 = [0,3];
% 3. Procedura de integrare:
[t,v]  = ode45('f_oscil',t,v0);
plot(t,v(:,1)) % prima coloana din vectorul v
grid; xlabel('t,sec');ylabel('Elongatia x, m')
title('Oscilatii amortizate')
sound(1000*v(:,1),4000)