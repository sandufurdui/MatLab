function [] = f_coer(t)
% Parametrii oscilatiilor:
A1 = 8; % m               Amplitudinea
w1 = pi/3; % rad/s        Pulsatia
a1 = pi/6; % rad          Faza initiala
x1 = A1.*cos(w1.*t+a1); % Oscilatia armonica 1
A2 = 5; % m                
w2 = w1; %rad/s
a2 = 0; % rad
x2 = A2.*cos(w2.*t+a2);  % Oscilatia armonica 2
x = x1 + x2;             % Compunerea oscilatiilor

% Vizualizarea pe grafic:
figure(2)
hold on
LW = 1.3;
plot(t,x1,'r','LineWidth',LW);
plot(t,x2,'b','LineWidth',LW);
plot(t,x,'k','LineWidth',LW)
legend('x1(t)','x2(t)','x = x1+x2')
title('Coherent harmonic oscillations')
xlabel('t, sec'); ylabel('Elongation, m')
grid on; 
