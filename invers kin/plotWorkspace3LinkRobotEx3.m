function plotWorkspace3LinkRobotEx3(nbSamples, L1, maxRangeQ3)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function plotWorkspace3LinkRobotEx3(nbSamples, maxRangeQ3)
% Task: plot the workspace of a 3 link robot by selecting random values qi 
%
% Inputs:
%	- nbSamples: number of samples to plot
%	- L1: length of first link (in m)
%	- maxRangeQ3: maximum absolute value for joint q3 (in m)
%
% Output: None
%
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 15/02/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% D-H parameters
theta = [0 0 0]'; %[q1 q2 0]'
d = [0 0 0]';%[0 0 q3]'
a = [L1 0 0]';
alpha = [90 90 0]';

% plot
figure;
	
 % 1st method : sample the joint space
	
% loop over samples
for l_sample=1:nbSamples
	% generate random qi values
	q1 = rand * 360.0;
	q2 = rand * 360.0;
	q3 = 2*(rand-0.5) * maxRangeQ3;
	%forward kinematics
	theta(1) = q1;
	theta(2) = q2;
	d(3) = q3;
	wTee = dh2ForwardKinematics(theta, d, a, alpha);
	wPee = wTee * [0 0 0 1]';
	
	plot3(wPee(1), wPee(2), wPee(3), 'bo' ); hold on;
end
title('Workspace sampling joint space');
	
