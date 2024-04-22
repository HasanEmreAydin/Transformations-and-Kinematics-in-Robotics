function  rotationMatrix = create2DRotationMatrix(angle)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function  rotationMatrix = create2DRotationMatrix(angle)
% ex. rotationMatrix = create2DRotationMatrix(90)
%
% Task: Compute a 2D rotation matrix from an angle in degrees
%
% Input:
%	- angle: angle value in degrees
%
% Output:
%	- rotationMatrix: a rotation matrix structured as follow 
%		[cos(angle) -sin(angle)
%		sin(angle) cos(angle)]
%
% Author: Guillaume Gibert, guillaume.gibert@ecam.fr
% Date: 30/01/2024
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rotationMatrix = [cosd(angle) -sind(angle);
			sind(angle) cosd(angle)];