%Ecuación del diodo

q = 1.6022e-19; %carga del electrón
n = 1.5; %constante de difusión (Ge = 1, Si = 2)
k = 1.38e-23; %constante de Boltzam

%Diodo 1
v1 = 0:0.001:.7979; %variando voltaje de entrada
t1 = 298; %temperatura uno
num1 = q * v1; %numerador
den1 = n * k * t1; %denominador
M1 = num1/den1; %cociente
Id1 = 1e-9 * exp(M1); %Corriente del diodo 1

%Diodo 2
v2 = 0:0.001:0.6379;
t2 = 358;
num2 = q * v2;
den2 = n * k * t2;
M2 = num2 / den2;
Id2 = 1024e-9 * exp(M2);

%Graficando
plot(v1,Id1,'b',v2,Id2,'r');title('Ecuación del diodo');
legend('TEMPERATURA 298 K', 'TEMPERATURA 358 K');





