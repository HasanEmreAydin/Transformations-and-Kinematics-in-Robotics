function animate2LinkPlanarRobot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function animate2LinkPlanarRobot
% Task: Create an animation of the 2-link planar robot from its DH parameters
%
% Inputs: None
%
% Output: None
%
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 29/01/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% default DH parameters
theta = [0 0]'; %[q1 q2]'
d = [0 0]';
a = [0.5 0.3]';
alpha = [0 0]';

figure;

disp('Moving joint 1 from 0 to 90°, (Joint 2 = 0)');
for q1=0:90
	% replaces first theta value by q1
	theta(1) = q1;
	
	% estimates the position of the tip of J1
	wTj1 = dh2ForwardKinematics(theta(1), d(1), a(1), alpha(1));
	wPj1 = wTj1 * [0 0 0 1]';
	
	% estimates the position of the tip of J2 = ee
	wTee = dh2ForwardKinematics(theta, d, a, alpha);
	wPee = wTee * [0 0 0 1]';
	
	plot([0 wPj1(1)], [0 wPj1(2)], 'r'); hold on; % 1st link
	plot([wPj1(1) wPee(1)], [wPj1(2) wPee(2)], 'g' ); % 2nd link
	xlabel('x-axis (m)')
	ylabel('y-axis (m)')
	xlim([-1 1]);
	ylim([0 1]);
	pause(0.1);
	hold off;
end

disp('Press any key to continue...');
pause

disp('Moving joint 2 from 0 to 90°, (Joint 1 = 45)');
theta = [45 0]';
for q2=0:90
	% replaces 2nd theta value by q2
	theta(2) = q2;
	
	% estimates the position of the tip of J1
	wTj1 = dh2ForwardKinematics(theta(1), d(1), a(1), alpha(1));
	wPj1 = wTj1 * [0 0 0 1]';
	
	% estimates the position of the tip of J2 = ee
	wTee = dh2ForwardKinematics(theta, d, a, alpha);
	wPee = wTee * [0 0 0 1]';
	
	plot([0 wPj1(1)], [0 wPj1(2)], 'r'); hold on; % 1st link
	plot([wPj1(1) wPee(1)], [wPj1(2) wPee(2)], 'g' ); % 2nd link
	xlim([-1 1]);
	ylim([0 1]);
	pause(0.1);
	hold off;
end

	