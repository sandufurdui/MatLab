function [] = fa_Lissajous(n,a)
global t
% Parametrii oscilatiilor:
% pentru axa x:
A1 = 5; % m               Amplitudinea
w1 = pi/6; % rad/s        Pulsatia
a1 = pi/3; % rad          Faza initiala
x = A1.*cos(w1.*t+a1); % Oscilatia armonica pe directia x
% pentru axa y:
A2 = 5; % m                
w2 = w1; %rad/s
a2 = a1-a; % rad
y = A2.*cos(w2.*t+a2);  % Oscilatia armonica pe directia y

% Vizualizarea pe grafic:
figure(5)
subplot(3,3,n)
plot(x,y,'k-','LineWidth',2)
% pentru a = pi/2 trebuie sa se primeasca cerc, 
% doar pentru acest caz trebuie axis equal, 
% in rest-axis square
if a == pi/2 
    axis equal
else
    axis auto
end
format rat
title(['\Delta \alpha=',num2str(a),' rad']);
xlabel('t, sec'); ylabel('x, m')
grid on; 

