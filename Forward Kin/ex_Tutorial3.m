fprintf("======Ex 2======\n")

fprintf("======Ex 2c======\n")
q1 = 0.0; q2 = 0.0; q3 = -0.1; q4 = 0.0;

% DH parameters
theta = [0 q1 q2 0 q4]'; %[0 q1 q2 0 q4]
d = [0.5 0 0 q3 0]'; %[0.5 0 0 q3 0]
a = [0 0.7 0.7 0 0]';%[0 0.7 0.7 0 0]
alpha = [0 0 0 0 0]';%[0 0 0 0 0]

wTee = dh2ForwardKinematics(theta, d, a, alpha);
wPee = wTee * [0 0 0 1]'

fprintf("======Ex 2d======\n")
q1 = 0.0; q2 = 90.0; q3 = -0.1; q4 = 0.0;

% DH parameters
theta = [0 q1 q2 0 q4]'; %[0 q1 q2 0 q4]
d = [0.5 0 0 q3 0]'; %[0.5 0 0 q3 0]
a = [0 0.7 0.7 0 0]';%[0 0.7 0.7 0 0]
alpha = [0 0 0 0 0]';%[0 0 0 0 0]

wTee = dh2ForwardKinematics(theta, d, a, alpha);
wPee = wTee * [0 0 0 1]'

fprintf("======Ex 2e======\n")
q1 = 0.0; q2 = 90.0; q3 = -0.1; q4 = 26;

% DH parameters
theta = [0 q1 q2 0 q4]'; %[0 q1 q2 0 q4]
d = [0.5 0 0 q3 0]'; %[0.5 0 0 q3 0]
a = [0 0.7 0.7 0 0]';%[0 0.7 0.7 0 0]
alpha = [0 0 0 0 0]';%[0 0 0 0 0]

wTee = dh2ForwardKinematics(theta, d, a, alpha);
wPee = wTee * [0 0 0 1]'
	
fprintf("======Ex 3======\n")

fprintf("======Ex 3c======\n")
q1 = 0.0; q2 = 0.0; q3 = 0.0; l1 = 0.3;

% DH parameters
theta = [q1 q2 0 ]'; 
d = [0 0 q3]'; 
a = [l1 0 0]';
alpha = [90 90 0]';

wTee = dh2ForwardKinematics(theta, d, a, alpha);
wPee = wTee * [0 0 0 1]'

fprintf("======Ex 3d======\n")
q1 = -90.0; q2 = 0.0; q3 = -0.5; l1 = 0.3;

% DH parameters
theta = [q1 q2 0 ]'; 
d = [0 0 q3]'; 
a = [l1 0 0]';
alpha = [90 90 0]';

wTee = dh2ForwardKinematics(theta, d, a, alpha);
wPee = wTee * [0 0 0 1]'

fprintf("======Ex 3e======\n")
q1 = 90.0; q2 = 90.0; q3 = 0.8; l1 = 0.3;

% DH parameters
theta = [q1 q2 0 ]'; 
d = [0 0 q3]'; 
a = [l1 0 0]';
alpha = [90 90 0]';

wTee = dh2ForwardKinematics(theta, d, a, alpha);
wPee = wTee * [0 0 0 1]'

fprintf("======Ex 3f======\n")
q1 = 22.0; q2 = -14.0; q3 = 0.8; l1 = 0.3;

% DH parameters
theta = [q1 q2 0 ]'; 
d = [0 0 q3]'; 
a = [l1 0 0]';
alpha = [90 90 0]';

wTee = dh2ForwardKinematics(theta, d, a, alpha);
wPee = wTee * [0 0 0 1]'

fprintf("======Ex 4======\n")

l1 = 0.4;

fprintf("======Ex 4c======\n")
q1 = 10.0; q2 = -20.0; q3 = 18; q4 = 0.3; q5 = -2.4; q6 = 12.5;

% DH parameters
theta = [q1 q2 q3 q4 q5 q6 ]'; 
d = [0 0.16 -0.14 0.45 0 0.07]'; 
a = [l1 -0.4 0 0 0 0]';
alpha = [90 0 90 90 -90 0]';

wTee = dh2ForwardKinematics(theta, d, a, alpha);
wPee = wTee * [0 0 0 1]'



fprintf("======Ex 4d======\n")
q1 = -12.0; q2 = 44.0; q3 = -2; q4 = 16.2; q5 = -92.3; q6 = 0.1;

% DH parameters
theta = [q1 q2 q3 q4 q5 q6 ]'; 
d = [0 0.16 -0.14 0.45 0 0.07]'; 
a = [l1 -0.4 0 0 0 0]';
alpha = [90 0 90 90 -90 0]';

wTee = dh2ForwardKinematics(theta, d, a, alpha);
wPee = wTee * [0 0 0 1]'
