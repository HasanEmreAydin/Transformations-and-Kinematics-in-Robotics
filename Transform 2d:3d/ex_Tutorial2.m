fprintf("======Ex 3======\n")
fprintf("Ex 3.1\n")
rotZAngle = -90
tX = 0.2
tY = -3.5
aTb = create2DTransformationMatrix(rotZAngle, tX, tY)

bP = [-2; 3;1];
aP = aTb*bP

bP = [1; 4;1];
aP = aTb*bP

bP = [-1; -2;1];
aP = aTb*bP

fprintf("Ex 3.2\n")
rotZAngle = -90
tX = -0.2
tY = -3.5
aTb = create2DTransformationMatrix(rotZAngle, tX, tY)
bTa = inverse2DTransformationMatrix(aTb)

aP = [-5.3; -0.4; 1];
bP = bTa*aP 

aP = [2.7; 1.6; 1];
bP = bTa*aP 

aP = [-3.3; 0.9; 1];
bP = bTa*aP 

fprintf("======Ex 4======\n")

rotZAngle = -90
tX = 0.2
tY = -3.5
aRb = create2DTransformationMatrix(rotZAngle, 0, 0)
atb = create2DTransformationMatrix(0, tX, tY)
aTb = aRb*atb

bP = [-2; 3;1];
aP = aTb*bP

bP = [1; 4;1];
aP = aTb*bP

bP = [-1; -2;1];
aP = aTb*bP


fprintf("======Ex 5======\n")

aTb = [0 0 -1 5.2;
	0 1 0 -1.1;
	1 0 0 3.8;
	0 0 0 1];
	
bP = [-0.2; 3.5; 4.3; 1];
aP = aTb * bP

fprintf("======Ex 6======\n")
roll = -31.2;
pitch = 2.6;
yaw = -86.2;
tX = -1.2;
tY= 40.9;
tZ = -36.8;
ord = 1;
aTb = create3DTransformationMatrix(roll, pitch, yaw, ord, tX, tY, tZ);
bP = [-24.5; 1.6; 4.9; 1];
aP = aTb * bP

