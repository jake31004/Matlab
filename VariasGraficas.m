%Varias gráficas en una

t = 0:0.001:1; %tiempo
f = 2; %frecuencia en Hz
w = 2 * pi * f; %frecuencia angular
x = (1/2)*(1+cos(2*w*t));

%Graficando
subplot(2,2,1);plot(t,x,'r-','linewidth',1);title('Escala normal');grid
subplot(2,2,2);semilogx(t,x,'r*','linewidth',1);title('Escala logarítmica en X');grid
subplot(2,2,3);semilogy(t,x,'r.','linewidth',1);title('Escala logarítmica en Y');grid
subplot(2,2,4);loglog(t,x,'r+','linewidth',1);title('Escala logarítmica en ambos ejes');grid


