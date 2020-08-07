

% author: Tanalp Þengün
% Homework 5 Question 3 :
% Cholesky Factorization

%clear defaults
clearvars;
clc;

R=[ 28 15+9i 2+21i; 15-9i 48 15-11i; 2-21i 15+11i 30 ;]; %Correlation matrix

N=100000; % N: Number of vectors to be generated

out_result = generaterandvec(N,R);


out_matrix=out_result*out_result';

R_final=(1/N)*out_matrix;

%as we can see from the results R_final and the R at the b

function out=generaterandvec(N,R)


U=cholev(R); %Cholesky decomposition


n=size(R,1);

Randomm=randn(N,n); 

Rc=Randomm*U; 

out=transpose(Rc);
% Generates zero-mean complex Gaussian random vector sequence with the specified 
% covariance matrix
% Usage
% out=generaterandvec(N,R)
% Here

% R: The specified covariance matrix.
% out: Output matrix containing vector sequence. Assuming R is a pxp matrix
% out would be a pxN matrix

end


