% Author: Tanalp Þengün
% Homework 1 on Linear System Theory

%This is the eight question.
clc 
clearvars

A= [ 0.01 0.001 ; 0.001 0.01 ]; 
% this is the matrix A, as discussed in the question.

x0= [ 25 ; 0 ];
% approximation point x0 as defined in the question.

grad_x0= [ 0.5 ; 0.05 ];
%this is the gradient vector calculated by hand

drawhyperplane3D(x0);
%this one is for the affine combination of x0
drawhyperplanee3D(x0);

hold on

fun_a = funct(x0);

function affine = aff(x,x0)
grad_x0= [ 0.5 ; 0.05 ];

affine = funct(x0)+(grad_x0)'*(x-x0);

end


function p = drawhyperplanee3D(x,y)

% just like linspace i grid the x and y 
[x, y] = meshgrid(-50:1:50,-50:1:50);
%coming from the long form I left z alone and solve the equation with the
%unknowns, in the end this was the equation.
z= 0.01*x.^2 +0.002*x.*y+0.1*y.^2;
quiver3(25,0,6.25,0.5,0.05,-1,'r');
hold on
axis equal
% ýt can be differently shown but I take those from mathworks which seem to
% me estathic.
s= mesh(x,y,z,'FaceAlpha','0.5')
s.FaceColor = 'flat';

%tried different angles and this one seems to be working in terms of
%showing both plane and the normal vector.
view(-20,10)
grid on
end

function p = drawhyperplane3D(x,y)

% just like linspace i grid the x and y 
[x, y] = meshgrid(-50:1:50,-50:1:50);

%coming from the long form I left z alone and solve the equation with the
%unknowns, in the end this was the equation.
z= 0.5*x+0.005*y-6.25;


% I put hold on to see the vectors on one figure
hold on
axis equal
% ýt can be differently shown but I take those from mathworks which seem to
% me estathic.
s= mesh(x,y,z,'FaceAlpha','0.5');
s.FaceColor = 'flat';

%tried different angles and this one seems to be working in terms of
%showing both plane and the normal vector.
view(-20,10)
grid on
end


function dif_function = funct(x)
A= [ 0.01 0.001 ; 0.001 0.01 ]; 
    dif_function = (x)'*A*(x);
end
