function invTransformationMatrix = inverse2DTransformationMatrix(transformMatrix)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function invTransformMatrix = inverse2DTransformationMatrix(transformMatrix)
% Task: inverse a 2D transformation matrix 
%
% Inputs:
%	- transformMatrix: the transform matrix to inverse
%
% Output: 
%	-invTransformationMatrix: the inverse of the transformation matrix
%
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 21/01/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% checks if the input transform matrix has the right size
if (size(transformMatrix, 1) != 3 || size(transformMatrix, 2) != 3)
	fprintf('[ERROR] (inverseTransformationMatrix) -> the size of the input transform matrix is not 3x3!\n');
end

% retrieves the rotation matrix
rotationMatrix = transformMatrix(1:2, 1:2);

%retrieves the translation matrix
translationMatrix = transformMatrix(1:2, 3);

% inverses the rotation matrix
invRotationMatrix = inverse2DRotationMatrix(rotationMatrix);

% inverses the translation matrix
invTranslationMatrix = -invRotationMatrix * translationMatrix;

% create the inverse of the transform matrix
% ( R^-1 | -R^-1t )
%  ---  -----  -----  --
% ( 0 | 1)
% with R: the rotation matrix (2x2)
% and t: the translation matrix (2x1)
invTransformationMatrix = [invRotationMatrix invTranslationMatrix; 0 0 1];


