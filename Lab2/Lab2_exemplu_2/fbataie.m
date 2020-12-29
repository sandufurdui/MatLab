function[x1,x2,x3]=fbataie(t,domega)
% definim amplitudinea
a1=20; % m
a2=22; % m
% definim pulsatia
omega1=2; % rad/sec
omega2=omega1+domega; % rad/sec. Pentru batai puslatia omega2 trebuie sa 
                      % fie putin mai mare decit omega1
% definim faza initiala
alfa1=0; % rad. Alfa trebuie sa nu depinda de timp
alfa2=0; % rad
x1=a1*cos(omega1*t+alfa1);
x2=a2*cos(omega2*t+alfa2);
x3=x1+x2;
end