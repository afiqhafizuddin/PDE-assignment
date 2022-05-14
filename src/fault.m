    clear all;
clc;

DSSObj = actxserver('OpenDSSEngine.DSS');
% Start the DSS. Only needs to be executed the first time w/in a
% Matlab session
Start = DSSObj.Start(0);

DSSText = DSSObj.Text;
DSSCircuit=DSSObj.ActiveCircuit;
DSSSolution=DSSCircuit.Solution;
DSSText.command='Compile (C:\Users\Afiq Hafizuddin\Documents\tahun-akhir\sem-2\EPPB4143 Power Distribution Eng. Section 01\assignment-PDE\src\fault_master.dss)';

DSSText.command = 'Solve';
DSSText.command ='solve mode=faultstudy';
DSSText.command ='show Faults';
DSSText.command ='export Faultstudy';