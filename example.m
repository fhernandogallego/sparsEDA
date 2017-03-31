%% clears
clc
clear all
close all

%% DATA 1
% ivn07_16_matlab.mat should be in the current folder to load the gsr
% signal

load('ivn07_16_matlab.mat')
signal = data.conductance';
sr = 16;
graphics = 1;
epsilon  = 1;
Kmax   = 40;
dmin = 1.25*sr;  % Minimum distance between activations
rho = 0.025;

%% 
[driver, SCL, MSE] = sparsEDA(signal,sr,graphics,epsilon,Kmax,dmin,rho);




