clear all

clc


% System Parameters

Tss = 10e-6;          % Sampling time for our powergui

f = 50;               % grid frequency 

V =  380;         % inverter phase - phase voltage / line voltage

fsw = 5e3;            %  switching frequency

Ts = 1/fsw;            % Sampling time

P = 50e3;              % Inverter Size & PV array output

Pmin = 0.15 * P;      



% Filter Inductance Parameters


Lf = ((0.1*V^2)/(2*pi*f*Pmin));     % assuming total reactive power consumed by inductor = Pmin / also 
                                     % inductive impedance is needed as it changes
                                     % voltage source inverter to current
                                     % source inverter.

Rlf = Lf*25;

% We assume Qc = 0 as inductive reactance is very high in the system.

