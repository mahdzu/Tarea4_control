%% Simulacion de LGR para las funciones de transferencia solicitadas en la tarea 5 del curso de control %%
% Miguel Hernández Umaña, A42600, grupo 03
clear all
clc
%% 
s = tf('s');

%% Funciones de transferencia

P1 = 1.2*(s+2)/(s^2+2*s+1.36);
P2 = 1.2/(s^2-0.6)
%% Parámetros para caso P1 con control P
% Kp = 2.27, Kp = 3,6103 para mejorar sobrepaso máximo

sisotool(P1)

%% Parámetros para caso P1 con control PD
% Kp = 2.77
% Td = 0.5

sisotool(P1)
%% Parámetros para caso P1 con control PI
% Kp = 2.77
% Ti = 0.5

sisotool(P1)

%% Parámetros para caso P2 con control P
% Kp = cualquier valor

sisotool(P2)
%% Parámetros para caso P2 con control PD
% Kp = 23/6
% Td = 10/23

sisotool(P2)
%% Parámetros para caso P2 con control PI
% Kp = 23/6
% Ti = sqrt(15)/3 = 1.29

sisotool(P2)
%% Parámetros para caso P2 con control PID
% Kp = 23/6
% Td = (10-sqrt(15))/20 = 0.306
% Ti = sqrt(15)/3 = 1.29

sisotool(P2)
