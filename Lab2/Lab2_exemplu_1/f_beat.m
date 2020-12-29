function [] = f_beat(t)
% Parametrii oscilatiilor:
A1 = 3; % m               Amplitudinea
w1 = pi; % rad/s        Pulsatia
a1 = 0; % rad          Faza initiala
x1 = A1.*cos(w1.*t+a1); % Oscilatia armonica 1
A2 = 2; % m                
w2 = 1.02*w1; %rad/s
a2 = 0; % rad
x2 = A2.*cos(w2.*t+a2);  % Oscilatia armonica 2
x = x1 + x2;             % Compunerea oscilatiilor

% Vizualizarea pe grafic:
figure(3)
hold on
plot(t,x1,'k-'); plot(t,x2,'b-');plot(t,x,'r')
legend('x1(t)','x2(t)','x = x1+x2')
title('Beat oscillations')
xlabel('t, sec'); ylabel('Elongation, m')
grid on; 