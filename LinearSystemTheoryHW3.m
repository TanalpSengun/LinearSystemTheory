% Author: Tanalp Þengün
% Homework 3 for Linear System Theory

clearvars
clc
close all

%Question 3 
% (f)

% Pick arbitrary values for 
%{h0, h1, h2, h3}. Find the eigenvalues and 
%eigenvectors of H 


H = [ 3 4 7 11 ;11 3 4 7 ; 7 11 3 4 ; 4 7 11 3 ];

[V D]=eig(H)

