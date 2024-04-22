function [nbSol, qi] = solveIK2LinkPlanarRobot(L1, L2, x, y)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [nbSol, qi] = solveIK2LinkPlanarRobot(L1, L2, x, y)
% Task: solve Inverse Kinematics (if it exists) for a 2 link planar robot
%
% Inputs:
%	- L1: length of link 1 (in m)
%	- L2: length of link 1 (in m)
%	- x: target x coordinate (in m)
%	- y:  target y coordinate (in m)
%
% Outputs: 
%	- nbSol: number of solutions for this IK problem
%	- qi: array of joint angle values (in degrees)
%	
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 09/02/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%config
threshold = 1e-10;

cos_q2 =(x*x + y*y -(L1*L1 + L2*L2)) / (2*L1*L2);

% no solution cos_q2 >1 or <-1
if (cos_q2 > 1.0 || cos_q2 < -1.0)
	nbSol = 0;
	qi = [];

% one solution cos_q2=1 or -1
elseif (abs(cos_q2-1.0) < threshold)
	nbSol = 1;
	q2 = 0;
	q1 = atan2(y,x);
	qi = [rad2deg(q1) rad2deg(q2)];
elseif (abs(cos_q2+1.0) < threshold)
	nbSol = 1;
	q2 = pi;
	q1 = atan2(y,x)
	qi = [rad2deg(q1) rad2deg(q2)]

% two solutions -1< cos_q2 < 1
elseif (cos_q2 > -1.0 && cos_q2 < 1.0)
	nbSol = 2;
	q2_1 = acos(cos_q2);
	q2_2 = 2*pi-acos(cos_q2);
	
	q1_1 = atan2(y,x)-atan2(L2*sin(q2_1),(L1+L2*cos_q2));
	q1_2 = atan2(y,x)+atan2(L2*sin(q2_1),(L1+L2*cos_q2));
	
	qi = [rad2deg(q1_1) rad2deg(q2_1); rad2deg(q1_2) rad2deg(q2_2)];
end



