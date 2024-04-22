function plotIK2LinkPlanarRobot(L1, L2, x, y)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function plotIK2LinkPlanarRobot(L1, L2, x, y)
% Task: plot Inverse Kinematics (if it exists) for a 2 link planar robot
%
% Inputs:
%	- L1: length of link 1 (in m)
%	- L2: length of link 1 (in m)
%	- x: target x coordinate (in m)
%	- y:  target y coordinate (in m)
%
% Outputs: None
%	
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 09/02/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% default DH parameters
theta = [0 0]'; %[q1 q2]'
d = [0 0]';
a = [L1 L2]';
alpha = [0 0]';

% solve IK
[nbSol, qi] = solveIK2LinkPlanarRobot(L1, L2, x, y)
fprintf('Number of solutions for IK= %d\n',nbSol);

% plot
figure;

% outer and inner circles defining the workspace
drawCircle(0, 0, L1+L2, 100);
drawCircle(0, 0, L1-L2, 100);

if (nbSol > 0)
	plot(x,y,'bo'); hold on; % target position (blue if in workspace red otherwise)
	for l_sol=1:size(qi,1)
		theta(1) = qi(l_sol,1); theta(2) = qi(l_sol,2);
		% estimates the position of the tip of J1
		wTj1 = dh2ForwardKinematics(theta(1), d(1), a(1), alpha(1));
		wPj1 = wTj1 * [0 0 0 1]';
	
		% estimates the position of the tip of J2 = ee
		wTee = dh2ForwardKinematics(theta, d, a, alpha);
		wPee = wTee * [0 0 0 1]';
	
		plot([0 wPj1(1)], [0 wPj1(2)], 'k'); hold on; % 1st link
		plot([wPj1(1) wPee(1)], [wPj1(2) wPee(2)], 'g' ); % 2nd link
	end
else
	plot(x,y,'r+'); hold on; % target position (blue if in workspace red otherwise)
end

xlim([-(L1+L2) (L1+L2)]);
ylim([-(L1+L2) (L1+L2)]);
