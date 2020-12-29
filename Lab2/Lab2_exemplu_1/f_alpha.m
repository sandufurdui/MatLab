function [] = f_alpha(n,a)
global t
% Parametrii oscilatiilor:
A1 = 8; % m               Amplitudinea
w1 = pi/6; % rad/s        Pulsatia
a1 = pi/3; % rad          Faza initiala
x1 = A1.*cos(w1.*t+a1); % Oscilatia armonica 1
A2 = 5; % m                
w2 = w1; %rad/s
a2 = a1-a; % rad
x2 = A2.*cos(w2.*t+a2);  % Oscilatia armonica 2
x = x1 + x2;             % Compunerea oscilatiilor

% Vizualizarea pe grafic:
figure(4)
subplot(3,3,n)
hold on
plot(t,x1,'k-'); plot(t,x2,'b-');plot(t,x,'r')
format rat
title(['\Delta \alpha = ',num2str(a)]);
xlabel('t, sec'); ylabel('x, m')
grid on; 