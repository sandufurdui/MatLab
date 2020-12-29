function dvdt = f(t,v)
% Vectorul variabilelor
x = v(1);
xp = v(2);
% vectorul derivatelor
dvdt = zeros(2,1);
w0 = 10; % frecventa proprie a oscilatorului
dvdt(1) = xp;
d = 0.01
dvdt(2) = -2*d*xp-w0^2*x;
