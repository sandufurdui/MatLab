function[x,y]=f3a(t,dalfa)
% definim amplitudinea pentru axa x si y
ax=5; % m
ay=5; % m
% definim pulsatia
omegax=5; % rad/sec
omegay=5; % rad/sec
% definim faza initiala
alfax=0; % rad
alfay=alfax+dalfa; % rad
% ecuatiile oscilatiilor pe x si pe y:
x=ax*cos(omegax*t+alfax);
y=ay*cos(omegay*t+alfay);
end