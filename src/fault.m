    clear all;
clc;

DSSObj = actxserver('OpenDSSEngine.DSS');
% Start the DSS. Only needs to be executed the first time w/in a
% Matlab session
Start = DSSObj.Start(0);

DSSText = DSSObj.Text;
DSSCircuit=DSSObj.ActiveCircuit;
DSSSolution=DSSCircuit.Solution;
DSSText.command='Compile (C:\Users\Afiq Hafizuddin\Documents\MATLAB\01-STATIC-DUMA-AMEND\fault-master.dss)';

DSSText.command = 'Solve';
DSSText.command ='solve mode=faultstudy';
DSSText.command ='show Faults';
DSSText.command ='export Faultstudy';