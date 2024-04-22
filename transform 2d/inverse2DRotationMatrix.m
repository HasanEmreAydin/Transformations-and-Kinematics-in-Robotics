function invRotationMatrix = inverse2DRotationMatrix(rotationMatrix)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function invRotationMatrix = inverse2DRotationMatrix(rotationMatrix)
% Task: inverse a 2D rotation matrix 
%
% Inputs:
%	- rotationMatrix: the rotation matrix to inverse
%
% Output: 
%	-invRotationMatrix: the inverse of the rotation matrix
%
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 21/01/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% checks if the input rotation matrix has the right size
if (size(rotationMatrix, 1) != 2 || size(rotationMatrix, 2) != 2)
	fprintf('[ERROR] (inverseRotationMatrix) -> the size of the input rotation matrix is not 2x2!\n');
end

invRotationMatrix = rotationMatrix';