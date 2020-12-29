figure
x=[0:0.05:1];
plot(x,v1(x))
title ('var. 1/1');
xlabel ('x');
ylabel ('y');
legend('plot')
figure
fplot ('v1', [0.05,1])
title ('var. 1/2');
xlabel ('x');
ylabel ('y');
legend('fplot')