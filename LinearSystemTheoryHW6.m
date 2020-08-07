
%author: Tanalp Þengün
%homework 6 : linear system theory

clearvars;
clc;
figure()

[x, y] = meshgrid(0:1:50,0:1:50);
%coming from the long form I left z alone and solve the equation with the
%unknowns, in the end this was the equation.
z= sqrt(x.*y);
z2=-sqrt(x.*y);
surf(z);
hold on
surf(z2);

