function plotWorkspace2LinkPlanarRobot(L1, L2,nbSamples,method)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function plotWorkspace2LinkPlanarRobot(L1, L2,nbSamples,method)
% Task: plot the workspace of a 2 link planar robot by selecting random values qi 
%
% Inputs:
%	- L1: length of link 1 (in m)
%	- L2: length of link 1 (in m)
%	- nbSamples: number of samples to plot
%	- method: if equal to 1 sample joint space, if equal to 2 sample the cartesian space (+IK)
%
% Output: None
%
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 09/02/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% D-H parameters
theta = [0 0]'; %[q1 q2]'
d = [0 0]';
a = [L1 L2]';
alpha = [0 0]';

% plot
figure;
	
if (method == 1) % 1st method : sample the joint space
	
	% loop over samples
	for l_sample=1:nbSamples
		% generate random qi values
		q1 = rand * 360.0;
		q2 = rand * 360.0;
		
		%forward kinematics
		theta(1) = q1;
		theta(2) = q2;
		wTee = dh2ForwardKinematics(theta, d, a, alpha);
		wPee = wTee * [0 0 0 1]';
		
		plot(wPee(1), wPee(2), 'bo' ); hold on;
	end
	title('Workspace sampling joint space');
	
elseif (method == 2) % 2nd method : sample the cartesian space

	% loop over samples
	for l_sample=1:nbSamples
		% generate random cartesian values
		maxRange = 2 * (L1 + L2);
		x = (rand - 0.5) * maxRange;
		y = (rand -0.5) * maxRange;
		
		[nbSol, qi] = solveIK2LinkPlanarRobot(L1, L2, x, y);
		
		if (nbSol > 0)
			plot(x,y,'bo'); hold on;
		else
			plot(x,y,'r+'); hold on;
		end
		
	end
	title('Workspace sampling Cartesian space');
end

