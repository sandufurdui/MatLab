% Procedura de integrare
% 1. Intervalul de timp:
t = [0,0.5]; % secunde
% 2. Vectorul valorilor initiale.
%     Completam un vector de tipul (4)
v0 = [0,3];
% 3. Procedura de integrare:
[t,v]  = ode45('f',t,v0);