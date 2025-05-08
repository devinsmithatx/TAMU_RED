% run_sim.m
clear; clc; close all; 
%% USER INPUTS

% Commanded Thrust Value
F_cmd = 1;

% State Initial Conditions
P_FOX_0 = 1;       % [Pa_abs] FOX Tank Pressure Initial Condition
P_C_0 = 1;         % [Pa_abs] Combustion Chamber Pressure Initial Condition
m_F_0 = 1;         % [kg] Mass fuel in FOX Tank Initial Condition
m_OX_0 = 1;        % [kg] Oxidizer fuel in FOX Tank Initial Conditoin

% Engine Dynamics Constants
rho_H2O = 1;      % [kg/m^3] Density of Water   
rho_F = 1;        % [kg/m^3] Density of fuel in liquid state
rho_OX = 1;       % [kg/m^3] Density of oxidizer in lquid state
R_N2 = 1;         % [J/(kg*K)] Specific gas Constant for Nitrogen Gas
T_FOX = 1;        % [K] Temperature of contens in FOX tank
Cv_line = 1;      % [-] Flow coefficient for the upper line with N2 Gas
V_FOX = 1;        % [m^3] Volume of the FOX tank
V_plunger = 1;    % [m^3] Volume of the plunger in the FOX tank
R_C = 1;          % [J/(kg*K)] Specific gas constant of combustion products
T_C = 1;          % [K] Temperature of combustion products
V_C = 1;          % [m^3] Volume of the combustion chamber
k = 1;            % [-] Specific heat ratio of combustion products
P_inf = 1;        % [Pa_abs] Stagnation Pressure of combustion chamber (?)

% Throttle Cv bounds
Cv_OX_upper = 1;  % [-] Max Fuel Valve Flow Coefficient
Cv_OX_lower = -1;  % [-] Min Oxidizer Valve Flow Coefficient
Cv_F_upper = 1;   % [-] Max Fuel Valve Flow Coefficient
Cv_F_lower = -1;   % [-] Min Ozidizer Valve Flow Coefficient

% Software parameters
Tc = 1;           % [s] Controller sampling period
Ts = 1;           % [s] Measurement sampling periode
omega_c = 1;      % [rad] Lowpass Filter Cuttoff Frequency

%% SIMULATION
open_system("throttle_sim")