clear; close all; clc;

% define a uniformly spaced vector of x1- and x2-values (2st and 2nd
% coordinates)
x1 = 0:0.25:5;
x2 = x1;

% get all possible coordinate combinations
[X1,X2] = meshgrid(x1,x2);
% visualize
figure(163); plot(X1,X2,'b.');

% linear transformation 1: change the scaling -- multiply all values by 2
% using a matrix A representing a linear transformation
% Y = [y1; y2] = the new coordinates of the original points after the
% transformation
A = [0 2; 2 0];
X = [X1(:)';X2(:)'];
Y = A*X;
% plot the rescaled coordinates
hold on;
plot(Y(1,:),Y(2,:),'m.');


% linear transformation 2: stretch out the grid as if you were pinching it
% from the corners
B = [0 1; 1 5];
Y = B*X;
plot(Y(1,:),Y(2,:),'c.');

% linear transformation 3: stretch out the grid a bit more
C = [0 1; 1 50];
Y = C*X;
plot(Y(1,:),Y(2,:),'r.');