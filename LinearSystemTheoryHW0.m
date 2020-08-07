
% Author: Tanalp Þengün
% Course: Linear System Theory / Prof.Alper Erdoðan

% to clear the variables, and close all the past figures
clc;
close all;
clearvars;

% these are the a and b in the question
a = [ 1 1 ];
b = [ 2 1 ];

%this will be the name of the functions 
% a and b will be the input and as an output the plot will
%be pop up.
drawhyperplane2D(a,b)

%this will be for the new task, plotting the second one. 
figure();
% a given
testa = [ 1 -1 ];
% b given
testb = [ 1 2 ];

%to test the 2d shape.
drawhyperplane2D(testa,testb)
 
% even though it is only shown in the 1st quadrant the line and the vectors
% a and b are true.


%for a new figure
figure();

%initialization of the 3d vectors for the other question
a_3D= [ 2 ;-1 ;2 ];
b_3D= [ 1 ;2 ;1 ];

%the test of 3d plot
drawhyperplane3D(a_3D,b_3D)

%the function for to draw
function p = drawhyperplane2D(a,b)

x = linspace(0,3,10);
% this is the relation between x(2)and x(1) in 2D I know that x(2) is
% representing as y in matlab.
% as we left y alone this is our equation

y= ((-a(1)./(a(2))*(x-b(1)))+b(2));
plot(x,y)
% I put hold on to see the vectors on one figure
hold on
% First vector (b)
quiver(0,0,b(1),b(2),'AutoScale','off');
%Second vector a starting from the location of b 
quiver(b(1),b(2),a(1),a(2),'AutoScale','off');
%For a better view
grid on
axis auto

end




function p = drawhyperplane3D(a,b)

% just like linspace i grid the x and y 
[x, y] = meshgrid(0:0.1:5,0:0.1:5);
%coming from the long form I left z alone and solve the equation with the
%unknowns, in the end this was the equation.
z= ((sum(a.*b)/a(3))- (a(1).*x/a(3))-(a(2).*y./a(3)));
%this is for the normal vector of the plane
quiver3(b(1),b(2),b(3),a(1),a(2),a(3),'r')
% I put hold on to see the vectors on one figure
hold on

% ýt can be differently shown but I take those from mathworks which seem to
% me estathic.
s= mesh(x,y,z,'FaceAlpha','0.5')
s.FaceColor = 'flat';

%tried different angles and this one seems to be working in terms of
%showing both plane and the normal vector.
view(-20,10)
grid on
end
