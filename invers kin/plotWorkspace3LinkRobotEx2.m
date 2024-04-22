function plotWorkspace3LinkRobotEx2(nbSamples, maxRangeQ1, maxRangeQ3)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function plotWorkspace3LinkRobotEx2(nbSamples, maxRangeQ1, maxRangeQ3)
% Task: plot the workspace of a 3 link robot by selecting random values qi 
%
% Inputs:
%	- nbSamples: number of samples to plot
%	- maxRangeQ1: maximum absolute value for joint q1
%	- maxRangeQ3: maximum absolute value for joint q3
%
% Output: None
%
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 15/02/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% D-H parameters
theta = [0 0 0]'; %[0 q2 0]'
d = [0 0 0]';%[q1 0 q3]'
a = [0 0 0]';
alpha = [0 -90 0]';

% plot
figure;
	
 % 1st method : sample the joint space
	
% loop over samples
for l_sample=1:nbSamples
	% generate random qi values
	q1 = 2*(rand-0.5) * maxRangeQ1;
	q2 = rand * 360.0;
	q3 = 2*(rand-0.5) * maxRangeQ3;
	%forward kinematics
	theta(2) = q2;
	d(1) = q1;
	d(3) = q3;
	wTee = dh2ForwardKinematics(theta, d, a, alpha);
	wPee = wTee * [0 0 0 1]';
	
	plot3(wPee(1), wPee(2), wPee(3), 'bo' ); hold on;
end
title('Workspace sampling joint space');
	
