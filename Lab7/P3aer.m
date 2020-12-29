% Pentru aer: Avem un corp lansat de la inaltimea h intr-un mediu cu
% rezistenta k. 
% Exact ca in desen, vom proiecta fortele pe axele x si y si vom deduce
% ecuatiile diferentiale pentru x si y:
% Vectorul vitezei are componentele xp si yp: v=[xp, yp]; Rezistenta
% aerului este proportionala cu viteza, adica R=k*v=k*[xp,yp]; 
%(minus apare la vector, pentru a indica directia)
% Pe x: max=-Rx=-k*vx=-k*xp
% Pe y: may=-mg-k*yp
alfa=pi/6;vb=5.67;h=1;k=0.5;m=0.5;
% Solutionarea analitica a problemei, considerind conditiile initiale
vbx=vb*cos(alfa); vby=vb*sin(alfa); x0=0; y0=h;
eqnx='D2x=-0.5*Dx';
initsx='x(0)=0, Dx(0)=4.91';
x=dsolve(eqnx,initsx,'t')
eqny='0.5*D2y=-0.5*9.81-0.5*Dy';
initsy='y(0)=0, Dy(0)=2.84';
y=dsolve(eqny,initsy,'t')
% 3.4. Timpul de zbor va fi timpul pina cind corpul ajunge jos. y(tz)=-h.
% Vom executa instructiunea de mai sus in linia de comanda, apoi vom copia
% y=-h in:
tz=eval(solve('253/20 - 253/(20*exp(t)) - (981*t)/100=-h','t'));
disp(['timpul de zbor este  ',num2str(tz),' sec.'])
% Daca vom inlocui aceasta valoare in expresial pentru x, vom obtine bataia
syms t
bat=subs(x,t,tz);
disp(['Punctul va cadea la distanta de ',num2str(bat),' metri'])