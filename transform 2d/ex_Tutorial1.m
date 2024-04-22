fprintf("======Ex 1======\n")
fprintf("Ex 1a\n")
aRb = create2DRotationMatrix(-90);
bP = [-2;3];
aP = aRb * bP

bP = [1.5; -8.6];
aP = aRb * bP

bP = [0.0; 5.4];
aP = aRb * bP

fprintf("Ex 1b\n")
aRb = create2DRotationMatrix(30);
bP = [-1.2;5.4];
aP = aRb * bP

bP = [2.8; -3.6];
aP = aRb * bP

bP = [2.3; -0.4];
aP = aRb * bP

fprintf("Ex 1c\n")
aRb = create2DRotationMatrix(90);
bRa = inverse2DRotationMatrix(aRb);
aP = [-5.3; -0.4];
bP = bRa*aP

aP = [2.7; 1.6];
bP = bRa*aP

aP = [-3.3; 0.9];
bP = bRa*aP


fprintf("======Ex 2======\n")

wTe1 = create2DRotationMatrix(90);
e1Te2 = create2DRotationMatrix(-45);
e2Te3 = create2DRotationMatrix(60);
e3Te4 = create2DRotationMatrix(-33);
e4Te5 = create2DRotationMatrix(14);
e5Te6 = create2DRotationMatrix(-95);
e6Te7 = create2DRotationMatrix(2);

fprintf("Ex 2.1\n")

cP = [-5.3; -0.4];
wP = wTe1*e1Te2*e2Te3*cP

cP = [2.7; 1.6];
wP = wTe1*e1Te2*e2Te3*cP

cP = [-2.1; 1.3];
wP = wTe1*e1Te2*e2Te3*cP

fprintf("Ex 2.2\n")
cP = [-5.3; -0.4];
wP = wTe1*e1Te2*e2Te3*e3Te4*e4Te5*e5Te6*e6Te7*cP

cP = [2.7; 1.6];
wP = wTe1*e1Te2*e2Te3*e3Te4*e4Te5*e5Te6*e6Te7*cP

cP = [-2.1; 1.3];
wP = wTe1*e1Te2*e2Te3*e3Te4*e4Te5*e5Te6*e6Te7*cP


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