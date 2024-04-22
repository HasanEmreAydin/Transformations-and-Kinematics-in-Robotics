function transformationMatrix = create2DTransformationMatrix(rotZAngle, tX, tY)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function transformationMatrix = create2DTransformationMatrix(rotZAngle, tX, tY)
% Task: create the 2D transformation matrix corresponding to a rotation around z and a translation
%
% Inputs:
%	- rotZAngle: the value of the rotation angle Rz in degrees
%	- tX = the value of the translation along x in mm
%	- tY = the value of the translation along y in mm
%
% Output: 
%	-transformationMatrix: the transformation matrix corresponding to the rotation angle Rz and the translations tX and tY
%
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 21/01/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% determine the rotation matrix (2 x 2)
rotationMatrix = create2DRotationMatrix(rotZAngle);

% create the translation part (2x1)
translationMatrix = [tX; tY];

% create the homogeneous coordinate part
homogeneousCoord = [0 0 1];

% create the transformation matrix which shape is
% ( R | t )
%  ---  --
% ( 0 | 1)
% with R: the rotation matrix (2x2)
% and t: the translation matrix (2x1)
transformationMatrix = [ rotationMatrix translationMatrix; homogeneousCoord];

