function testReasoningAboutSpaceFunctions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function testReasoningAboutSpaceFunctions
% Task: Test all the functions created for the "Reasoning About Space" tutorial
%
% Inputs: None
%
% Output: None
%
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 25/01/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

threshold = 1e-10;

% test of create2DRotationMatrix function
disp('%%%%%%%%%%%%%%%%%')
disp('Testing create2DRotationMatrix')
nbTestPassed = 0;
nbTestTotal = 0;
% test #1
rotZAngle = 90; % input
expectedRotationMatrix = [0 -1; 1 0]; % output
rotationMatrix = create2DRotationMatrix(rotZAngle);
nbTestTotal += 1;
if ( sum(sum(abs(expectedRotationMatrix .- rotationMatrix))) < threshold )
	disp('Test #1 passed!')
	nbTestPassed += 1;
else
	disp('Test #1 failed!')
end

% test #2
rotZAngle = -90;% input
expectedRotationMatrix = [0 1; -1 0]; % output
rotationMatrix = create2DRotationMatrix(rotZAngle);
nbTestTotal += 1;
if ( sum(sum(abs(expectedRotationMatrix .- rotationMatrix))) < threshold )
	disp('Test #2 passed!')
	nbTestPassed += 1;
else
	disp('Test #2 failed!')
end

% test of create2DTransformationMatrix function
disp('%%%%%%%%%%%%%%%%%')
disp('Testing create2DTransformationMatrix')
% test #1
rotZAngle = 90;% input
tX = 1.0;% input
tY = -2.0;% input
expectedTranformationMatrix = [0 -1 1; 1 0 -2; 0 0 1]; % output
transformationMatrix = create2DTransformationMatrix(rotZAngle, tX, tY);
nbTestTotal += 1;
if ( sum(sum(abs(expectedTranformationMatrix .- transformationMatrix))) < threshold )
	disp('Test #1 passed!')
	nbTestPassed += 1;
else
	disp('Test #1 failed!')
end

% test #2
rotZAngle = -90;% input
tX = -1.0;% input
tY = 2.0;% input
expectedTranformationMatrix = [0 1 -1; -1 0 2; 0 0 1]; % output
transformationMatrix = create2DTransformationMatrix(rotZAngle, tX, tY);
nbTestTotal += 1;
if ( sum(sum(abs(expectedTranformationMatrix .- transformationMatrix))) < threshold )
	disp('Test #2 passed!')
	nbTestPassed += 1;
else
	disp('Test #2 failed!')
end

% test of inverse2DRotationMatrix function
disp('%%%%%%%%%%%%%%%%%')
disp('Testing inverse2DRotationMatrix')
% test #1
rotationMatrix = [0 -1; 1 0];% input
expectedInvRotationMatrix = [0 1; -1 0]; % output
invRotationMatrix = inverse2DRotationMatrix(rotationMatrix);
nbTestTotal += 1;
if ( sum(sum(abs(expectedInvRotationMatrix .- invRotationMatrix))) < threshold )
	disp('Test #1 passed!')
	nbTestPassed += 1;
else
	disp('Test #1 failed!')
end

% test #2
rotationMatrix = [0 1; -1 0];% input
expectedInvRotationMatrix = [0 -1; 1 0]; % output
invRotationMatrix = inverse2DRotationMatrix(rotationMatrix);
nbTestTotal += 1;
if ( sum(sum(abs(expectedInvRotationMatrix .- invRotationMatrix))) < threshold )
	disp('Test #2 passed!')
	nbTestPassed += 1;
else
	disp('Test #2 failed!')
end

% test of inverse2DTransformationMatrix function
disp('%%%%%%%%%%%%%%%%%')
disp('Testing inverse2DTransformationMatrix')
% test #1
transformMatrix = [0 -1 0.1; 1 0 -0.2; 0 0 1];% input
expectedInvTransformMatrix = [0 1 0.2; -1 0 0.1; 0 0 1] ; % output
invTransformMatrix = inverse2DTransformationMatrix(transformMatrix);
nbTestTotal += 1;
if ( sum(sum(abs(expectedInvTransformMatrix .- invTransformMatrix))) < threshold )
	disp('Test #1 passed!')
	nbTestPassed += 1;
else
	disp('Test #1 failed!')
end

% test #2
transformMatrix = [0 1 -0.1; -1 0 -0.2; 0 0 1];% input
expectedInvTransformMatrix = [0 -1 -0.2; 1 0 0.1; 0 0 1] ; % output
invTransformMatrix = inverse2DTransformationMatrix(transformMatrix);
nbTestTotal += 1;
if ( sum(sum(abs(expectedInvTransformMatrix .- invTransformMatrix))) < threshold )
	disp('Test #2 passed!')
	nbTestPassed += 1;
else
	disp('Test #2 failed!')
end

% summary
disp('%%%%%%%%%%%%%%%%%')
disp('%SUMMARY%')
fprintf('# of tests passed: %d / %d\n', nbTestPassed, nbTestTotal)
disp('%%%%%%%%%%%%%%%%%')

