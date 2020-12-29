function [] = f_necoer(t)
% Parametrii oscilatiilor:
A1 = 3; % m               Amplitudinea
w1 = 3; % rad/s           Pulsatia
a1 = 0; % rad             Faza initiala
x1 = A1.*cos(w1.*t+a1); % Oscilatia armonica 1
A2 = 4; % m                
w2 = 5; %rad/s
a2 = pi/2; % rad
x2 = A2.*cos(w2.*t+a2);  % Oscilatia armonica 2
x = x1 + x2;             % Compunerea oscilatiilor

% Vizualizarea pe grafic:
figure(1)
hold on
LW = 1.3;
plot(t,x1,'r','LineWidth',LW);
plot(t,x2,'b','LineWidth',LW);
plot(t,x,'k','LineWidth',LW)
legend('x1(t)','x2(t)','x = x1+x2')
title('Non-coherent harmonic oscillations')
xlabel('t, sec'); ylabel('Elongation, m')
grid on; 