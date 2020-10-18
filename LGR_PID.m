%% Simulacion de LGR para las funciones de transferencia solicitadas en la tarea 4 del curso de control %%
% Miguel Hernández Umaña, A42600, grupo 03
clear all
clc
%% 
s = tf('s');

%% Funciones de transferencia

P1 = 1.2*(s+2)/(s^2+2*s+1.36);

Kp = 2.27;

C_P = Kp;

L1 = 1 + C_P*P1;

%rlocus(L1)
sisotool(P1)
