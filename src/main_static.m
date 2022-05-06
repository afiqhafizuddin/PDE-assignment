clear all;
clc;

DSSObj = actxserver('OpenDSSEngine.DSS');
Start=DSSObj.Start(0);

DSSText = DSSObj.Text;
DSSCircuit = DSSObj.ActiveCircuit;
DSSSolution = DSSCircuit.Solution;
DSSText.command = 'Compile (C:\Users\Afiq Hafizuddin\Documents\tahun-akhir\sem-2\EPPB4143 Power Distribution Eng. Section 01\assignment-PDE\src)';

% Voltage Profile
DSSText.command = 'Show voltage elem';
DSSText.command = 'Export voltage';
DSSText.command = 'Export seqvoltages';
% DSSText.command = 'Show Losses';
% DSSText.command = 'Show current elem';
% DSSText.command = 'Export seqcurrents';



% The other things
% DSSText.command = 'Show power kVA elem';
% DSSText.command = 'Export power kVA';
% DSSText.command = 'Export current';