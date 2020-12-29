function dvdt = f(t,v)
% Declaram vectorul v conform(4)
y = v(1);
yp = v(2);
% Generam un vector coloana de tipul (5)
dvdt = zeros(2,1);
% si il completam conform (6)
dvdt(1) = yp;
dvdt(2) = -5*yp+3*y;
