function testInverseKinematics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function testInverseKinematics
% Task: Test all the functions created for the "Inverse Kinematics" tutorial
%
% Inputs: None
%
% Output: None
%
%
% author: Guillaume Gibert, guillaume.gibert@ecam.fr
% date: 29/01/2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

threshold = 1e-10;
nbTestPassed = 0;
nbTestTotal = 0;

% test of create3DRotationMatrix function
disp('%%%%%%%%%%%%%%%%%')
disp('Testing create3DRotationMatrix')
% test #1
rollAngle = 90; % input
pitchAngle = 0;% input
yawAngle = 0;% input
order = 1; %input
expectedRotationMatrix = [1 0 0; 0 0 -1; 0 1 0]; % output
rotationMatrix = create3DRotationMatrix(rollAngle, pitchAngle, yawAngle, order);
nbTestTotal += 1;
if ( sum(sum(abs(expectedRotationMatrix .- rotationMatrix))) < threshold )
	disp('Test #1 passed!')
	nbTestPassed += 1;
else
	disp('Test #1 failed!')
end

% test #2
rollAngle = 0; % input
pitchAngle = 90;% input
yawAngle = 0;% input
order = 1; %input
expectedRotationMatrix = [0 0 1; 0 1 0; -1 0 0]; % output
rotationMatrix = create3DRotationMatrix(rollAngle, pitchAngle, yawAngle, order);
nbTestTotal += 1;
if ( sum(sum(abs(expectedRotationMatrix .- rotationMatrix))) < threshold )
	disp('Test #2 passed!')
	nbTestPassed += 1;
else
	disp('Test #2 failed!')
end

% test of create3DTransformationMatrix function
disp('%%%%%%%%%%%%%%%%%')
disp('Testing create3DTransformationMatrix')
% test #1
rollAngle = 0; % input
pitchAngle = 0;% input
yawAngle = 0;% input
order = 1; %input
tX = -2.0;%input
tY = 0.0;%input
tZ = 1.0;%input
expectedTranformationMatrix = [1 0 0 -2; 0 1 0 0; 0 0 1 1; 0 0 0 1]; % output
transformationMatrix = create3DTransformationMatrix(rollAngle, pitchAngle, yawAngle, order, tX, tY, tZ);
nbTestTotal += 1;
if ( sum(sum(abs(expectedTranformationMatrix .- transformationMatrix))) < threshold )
	disp('Test #1 passed!')
	nbTestPassed += 1;
else
	disp('Test #1 failed!')
end

% test #2
rollAngle = 90; % input
pitchAngle = 0;% input
yawAngle = 0;% input
order = 1; %input
tX = -2.0;%input
tY = 0.0;%input
tZ = 1.0;%input
expectedTranformationMatrix = [1 0 0 -2; 0 0 -1 0 ; 0 1 0 1; 0 0 0 1]; % output
transformationMatrix = create3DTransformationMatrix(rollAngle, pitchAngle, yawAngle, order, tX, tY, tZ);
nbTestTotal += 1;
if ( sum(sum(abs(expectedTranformationMatrix .- transformationMatrix))) < threshold )
	disp('Test #2 passed!')
	nbTestPassed += 1;
else
	disp('Test #2 failed!')
end


% test of dh2ForwardKinematics function
disp('%%%%%%%%%%%%%%%%%')
disp('Testing dh2ForwardKinematics')
% test #1
theta = [0 0]';% input
d = [0 0]';% input
a = [0.5 0.3]';% input
alpha = [0 0]';% input
expectedTransformationMatrix = [1 0 0 0.8; 0 1 0 0; 0 0 1 0; 0 0 0 1]; % output
transformationMatrix = dh2ForwardKinematics(theta, d, a, alpha);
nbTestTotal += 1;
if ( sum(sum(abs(expectedTransformationMatrix .- transformationMatrix))) < threshold )
	disp('Test #1 passed!')
	nbTestPassed += 1;
else
	disp('Test #1 failed!')
end

% test #2
theta = [90 0]';% input
d = [0 0]';% input
a = [0.5 0.3]';% input
alpha = [0 0]';% input
expectedTransformationMatrix = [0 -1 0 0; 1 0 0 0.8; 0 0 1 0; 0 0 0 1]; % output
transformationMatrix = dh2ForwardKinematics(theta, d, a, alpha);
nbTestTotal += 1;
if ( sum(sum(abs(expectedTransformationMatrix .- transformationMatrix))) < threshold )
	disp('Test #2 passed!')
	nbTestPassed += 1;
else
	disp('Test #2 failed!')
end


% test of computeJacobian2LinkPlanarRobot function
disp('%%%%%%%%%%%%%%%%%')
disp('Testing solveIK2LinkPlanarRobot')
% test #1
L1 = 1;% input
L2 = 1;% input
x = 2;% input
y = 0;% input
expectedNbSol = 1; % output
expectedQi = [0 0];% output

[nbSol, qi] = solveIK2LinkPlanarRobot(L1, L2, x, y);
nbTestTotal += 1;
if ( sum(sum(abs(expectedQi .- qi))) < threshold &&  expectedNbSol==nbSol)
	disp('Test #1 passed!')
	nbTestPassed += 1;
else
	disp('Test #1 failed!')
end

% test of computeJacobian2LinkPlanarRobot function
disp('%%%%%%%%%%%%%%%%%')
disp('Testing solveIK2LinkPlanarRobot')
% test #1
L1 = 1;% input
L2 = 1;% input
x = sqrt(2);% input
y = 0;% input
expectedNbSol = 2; % output
expectedQi = [-45 90; 45 270];% output

[nbSol, qi] = solveIK2LinkPlanarRobot(L1, L2, x, y);
nbTestTotal += 1;
if ( sum(sum(abs(expectedQi .- qi))) < threshold &&  expectedNbSol==nbSol)
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

