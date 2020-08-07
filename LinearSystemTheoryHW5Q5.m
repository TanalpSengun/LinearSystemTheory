% author: Tanalp Þengün
% Homework 5 Question 5 :
% Quadratic approximations of multivariable functions


% just like linspace i grid the x and y 
[x, y] = meshgrid(-50:1:50,-50:1:50);
%coming from the long form I left z alone and solve the equation with the
%unknowns, in the end this was the equation.
z= (4*x^2-1)*exp(-x^2-y^2);

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

x1=x0;
element1= (4*x1^2-1)*exp(-x1^2-y^2);
element2= dot( gradient((4*x1^2-1)*exp(-x1^2-y^2)),x-x0);
element3= 1/2*dot(hessian((4*x1^2-1)*exp(-x1^2-y^2),x0),x-x0);

result_func = element1 + element2 + element3;

[x, y] = meshgrid(-50:1:50,-50:1:50);
hold on
axis equal
s= mesh(x,y,result_func,'FaceAlpha','0.5');

