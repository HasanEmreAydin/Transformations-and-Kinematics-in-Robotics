function drawCircle(x, y, radius, nbSamples)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function drawCircle(x, y, radius, nbSamples)
% Task: plot a circle
%
% Inputs:
%	- x: x-coordinate of the center of the circle (in m)
%	- y: x-coordinate of the center of the circle (in m)
%	- radius: radius of the circle (in m)
%	- nbSamples:  number of samples
%
% Outputs: None
%	
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 09/02/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t = linspace(0,2*pi,nbSamples)'; 
circsx = radius.*cos(t) + x; 
circsy = radius.*sin(t) + y; 
plot(circsx,circsy, 'r'); hold on;