function[x,y]=f3b(t,dalfa)
% definim amplitudinea pentru axa x si y
ax=5; % m
ay=ax; % m
% definim pulsatia
omega=5;
omegax=3*omega; % rad/sec
omegay=omega; % rad/sec
% definim faza initiala
alfax=pi/2; % rad
alfa=alfax+dalfa;
% ecuatiile oscilatiilor pe x si pe y:
x=ax*cos(omegax*t+alfa);
y=ay*cos(omegay*t+alfa);
end