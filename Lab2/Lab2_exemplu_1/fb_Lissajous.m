function [] = fb_Lissajous(n,a)
global t
% pentru axa x:
A1 = 8; % m               Amplitudinea
w1 = pi/6; % rad/s        Pulsatia
a1 = pi/3; % rad          Faza initiala
x = A1.*cos(w1.*t+a1); % Oscilatia armonica pe directia x
% pentru axa y:
A2 = 5; % m                
w2 = pi/4; %rad/s
a2 = a1-a; % rad
y = A2.*cos(w2.*t+a2);  % Oscilatia armonica pe directia y

% Vizualizarea pe grafic:
figure(6)
subplot(3,3,n)
plot(x,y,'k-','LineWidth',2)
title(['\alpha=',num2str(a),' rad'])
axis square
xlabel('t, sec'); ylabel('x, m')
grid on; 